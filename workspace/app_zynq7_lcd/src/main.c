// For LCD Display App
#include "xparameters.h"
#include "xgpiops.h"
#include "xstatus.h"
#include "xplatform_info.h"
#include "xspips.h"
#include <xil_printf.h>

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
    u32 pic_idx = 0;
    for(u32 i = 0; i < 172; ++i){
    	for(u32 j = 0; j < 320; ++j){
        	if(j>=305){
        			LCD_WR_DATA(BLACK);
        		}
        	else{
        		LCD_WR_DATA(char2u16_data(gImage_pic[pic_idx], gImage_pic[++pic_idx]));
        		++pic_idx;// = pic_idx + 2;
        	}
        }
    }
    delay(1000);
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
