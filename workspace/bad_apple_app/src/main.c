
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
// #include "xil_exception.h"
// #include "xscugic.h"
// #include "unistd.h"

//#include "../includes/pic.h"
#include "../includes/lcd_init.h"
#include "../includes/lcd_io_init.h"
#include "../includes/lcd_drv.h"
//#include "../includes/intr_io_init.h"
#include "../includes/global_defines.h"

#include "xil_printf.h"
#include <xuartps.h>
XUartPs Uart_Ps_0;


XGpioPs Gpio;	/* The driver instance for GPIO Device. */
XSpiPs SpiInstance;
//XScuGic Intc;
XGpioPs_Config *ConfigPtr;
//XScuGic_Config *IntcConfig;

void delay(unsigned char i){
	volatile int Delay;
	volatile int k;
	for(k=0;k<i;k++)
	for (Delay = 0; Delay < 10000; Delay++);
}
int UART_init(){
	XUartPs_Config *Config;
	int Status;

	Config = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
	Status = XUartPs_CfgInitialize(&Uart_Ps_0, Config, Config->BaseAddress);
	XUartPs_SetBaudRate(&Uart_Ps_0, 115200);

	return Status;
}

void uart_ps_send(u8* data, u32 size){
    u32 sent_cnt = 0;
    while(sent_cnt < (size - 1 )){
        XUartPs_Send(&Uart_Ps_0, &data[sent_cnt], 1);
        sent_cnt++;
    }
    XUartPs_Send(&Uart_Ps_0, "\n\r", 2);
}

char* gen_filename(u32 pic_num) {
    static char filename[9];  // 扩展为12个字符的大小
    u8 thou_bit = pic_num / 1000;
    u8 hund_bit = (pic_num % 1000) / 100;
    u8 tens_bit = (pic_num % 100) / 10;
    u8 unit_bit = pic_num % 10;
    filename[0] = '0' + thou_bit;
    filename[1] = '0' + hund_bit;
    filename[2] = '0' + tens_bit;
    filename[3] = '0' + unit_bit;
    filename[4] = '.';
    filename[5] = 'b';
    filename[6] = 'm';
    filename[7] = 'p';
    filename[8] = '\0';
    //uart_ps_send("filename:\n");
    //uart_ps_send((u8*)filename, 9);  // 确保输出整个filename
    return filename;
}




static FATFS fatfs;


void read_frame(u8* frame, char* filename){
    u8 bmp_head[54];
    FIL fil;
    UINT *bmp_width, *bmp_height;
    UINT br;
    printf("filename:\n");
    printf(filename);
    f_open(&fil , filename, FA_READ);
    f_lseek(&fil, 0);
    f_read(&fil, bmp_head, 54, &br);
    UINT height = 172;
    UINT width = 320;
    bmp_width = &width;
    bmp_height = &height;
    //bmp_width = (UINT*)(bmp_head + 0x12);
    //bmp_height = (UINT*)(bmp_head + 0x16);

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

void LCD_Clear(u16 color){
    u32 pix_idx = 0;
    // LCD clear
    for(u32 i = 0; i < 172; i++){
        for(u32 j = 0; j < 320; j++){
                LCD_WR_DATA(color);
                pix_idx = pix_idx + 2;// = pic_idx + 2;
            }
        }
}

void LCD_Test()
{
    Address_set(0,0,320-1,172-1);
    uart_ps_send("LCD_Test\n", 9);
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
*/
//    delay(100);

    f_mount(&fatfs, "", 1);

    u32 pix_idx = 0;
    // LCD clear
    LCD_Clear(BLUE);
    delay(100);
    u8* frame2disp = (u8*)malloc(921600);
    if(frame2disp == NULL){
        uart_ps_send("malloc failed\n\r", 15);
        return;
    }
    else{
        for(u32 i = 0; i < 921600; i++){
            frame2disp[i] = 0x41;
        }
    }
    for(u32 pic_idx = 0; pic_idx <=2190; pic_idx++){
        Address_set(0,0,320-1,172-1);
        //uart_ps_send("pic_idx: ");
        //uart_ps_send("\n");
        //uart_ps_send(gen_filename(pic_idx));
        //uart_ps_send("\n");
        gen_filename(pic_idx);
        read_frame(frame2disp, gen_filename(pic_idx));
        pix_idx = 0;
        for(u32 i = 0; i < 172; i++){
            for(u32 j = 0; j < 320; j++){
                    LCD_WR_DATA(char2u16_data(frame2disp[320*i + j], frame2disp[1+320*i + j]));
                    //uart_ps_send(frame2disp[320*i + j], 2);
                    //uart_ps_send(frame2disp[1+320*i + j], 2);
                    pix_idx = pix_idx + 2;// = pic_idx + 2;

                }
            }
    }
    free(frame2disp);

}


int main(void)
{
	Lcd_Gpio_Init();
	Lcd_Spi_Init();

	Lcd_Init();
	//IntrIoInit();
    UART_init();
	while(1){
	    LCD_Test();
	};

	return XST_SUCCESS;
}
