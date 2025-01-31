#include "xparameters.h"
// For LCD Display App
//#include <xparameters.h>

// #include <stdio.h>#include <synchapi.h>
#include <xgpiops.h>
#include <xstatus.h>
#include <xplatform_info.h>
#include <xspips.h>
#include <xil_printf.h>

// For filesystem
#include "xil_types.h"
#include <ff.h>
#include <xil_cache.h>
//#include <sleep.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


// For Interrupt Handler App
#include "xil_exception.h"
#include "xscugic.h"
#include "unistd.h"

#include "../includes/pic.h"
#include "../includes/lcd_init.h"
#include "../includes/lcd_io_init.h"
#include "../includes/lcd_drv.h"
#include "../includes/intr_io_init.h"
#include "../includes/global_defines.h"


XGpioPs Gpio;	/* The driver instance for GPIO Device. */
XSpiPs SpiInstance;
XScuGic Intc;
XGpioPs_Config *ConfigPtr;
XScuGic_Config *IntcConfig;

void delay(unsigned char i){
	volatile int Delay;
	volatile int k;
	for(k=0;k<i;k++)
	for (Delay = 0; Delay < 10000; Delay++);
}

char* gen_filename(u32 pic_num){
    static char filename[9];
    if(pic_num < 10)
        sprintf(filename, "%000d", pic_num);
    else if (pic_num < 100)
        sprintf(filename, "%00d", pic_num);
    else if (pic_num < 1000)
        sprintf(filename, "%0d", pic_num);
    else
        sprintf(filename, "%d", pic_num);
    return filename;
}

void open_sd_file(){
    static FATFS fatfs;
    f_mount(&fatfs, "", 1);
}

void read_frame(u8* frame, char* filename){
    u8 bmp_head[54];
    FIL fil;
    uint *bmp_width, *bmp_height;
    uint br;
    f_open(&fil , filename, FA_READ);
    f_lseek(&fil, 0);
    f_read(&fil, bmp_head, 54, &br);
    bmp_width = (uint*)(bmp_head + 0x12);
    bmp_height = (uint*)(bmp_head + 0x16);

    for(int i = *bmp_height -1; i >= 0; i--){
        f_read(&fil, frame + i*(*bmp_width)*3, (*bmp_width)*3, &br);
    }
    f_close(&fil);
    Xil_DCacheFlush();
}

void Address_set(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2)
{
	LCD_WR_REG(0x2a);
	LCD_WR_DATA(x1);
	LCD_WR_DATA(x2);
	LCD_WR_REG(0x2b);
	LCD_WR_DATA(y1+34);
	LCD_WR_DATA(y2+34);
	LCD_WR_REG(0x2c);
}

u16 char2u16_data(unsigned char msc, unsigned char lsc){
	u16 tmp = ((u16)msc) << 8;
	return tmp + (u16)lsc;
}


void LCD_Test()
{
    Address_set(0,0,320-1,172-1);
/*
    for(u16 i = 0; i < 172; ++i){
        for(u16 j = 0; j < 320; ++j){
        	if(i<=43)
        		{
        		if(j < 80) LCD_WR_DATA(YELLOW);
        		else if(j < 160) LCD_WR_DATA(BLUE);
        		else if(j < 240) LCD_WR_DATA(BROWN);
        		else  LCD_WR_DATA(RED);
        		}
        	else if (i <= 86)
    		{
    		if(j < 80) LCD_WR_DATA(CYAN);
    		else if(j < 160) LCD_WR_DATA(GRAY);
    		else if(j < 240) LCD_WR_DATA(MAGENTA);
    		else  LCD_WR_DATA(BLUE);
    		}
        	else if (i <= 129)
    		{
    		if(j < 80) LCD_WR_DATA(BLUE);
    		else if(j < 160) LCD_WR_DATA(GREEN);
    		else if(j < 240) LCD_WR_DATA(BRRED);
    		else  LCD_WR_DATA(BLACK);
    		}
        	else
    		{
    		if(j < 80) LCD_WR_DATA(WHITE);
    		else if(j < 160) LCD_WR_DATA(GBLUE);
    		else if(j < 240) LCD_WR_DATA(GRED);
    		else  LCD_WR_DATA(GREEN);
    		}
        }
    }
*/
//    delay(100);
    open_sd_file();
    u8* frame2disp = (u8*)malloc(921600*sizeof(u8));
    u32 pix_idx = 0;
    for(u32 pic_idx = 1; pic_idx <=2190; pic_idx++){
        read_frame(frame2disp, gen_filename(pic_idx));
        pix_idx = 0;
        for(u32 i = 0; i < 172; i++){
            for(u32 j = 0; j < 320; j++){
                    LCD_WR_DATA(char2u16_data(frame2disp[pix_idx], frame2disp[1+pix_idx]));
                    pix_idx = pix_idx + 2;// = pic_idx + 2;
                }
            }
    }
    sleep(1);
}


int main(void)
{
	Lcd_Gpio_Init();
	Lcd_Spi_Init();

	Lcd_Init();
	IntrIoInit();

	while(1){
	    LCD_Test();
	};

	return XST_SUCCESS;
}
