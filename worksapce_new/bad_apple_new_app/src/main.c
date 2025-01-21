
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
#include "xuartps.h"
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
    filename[6] = 'i';
    filename[7] = 'n';
    filename[8] = '\0';
    //uart_ps_send("filename:\n");
    //uart_ps_send((u8*)filename, 9);  // 确保输出整个filename
    return filename;
}




static FATFS fatfs;


void read_frame(u8* frame, char* filename){
    FIL fil;
    UINT br;
    FRESULT res;
    res = f_open(&fil, filename, FA_READ);
    if(res != FR_OK){
        uart_ps_send("f_open failed\n", 14);
        switch (res)
        {
        case FR_DISK_ERR: 
            uart_ps_send("FR_DISK_ERR\n", 12);
            break;
            FR_INT_ERR:
            uart_ps_send("FR_INT_ERR\n", 11);
            break;
            FR_NOT_READY:
            uart_ps_send("FR_NOT_READY\n", 13);
            break;
            FR_NO_FILE:
            uart_ps_send("FR_NO_FILE\n", 11);
            break;
            FR_NO_PATH:
            uart_ps_send("FR_NO_PATH\n", 11);
            break;
            FR_INVALID_NAME:
            uart_ps_send("FR_INVALID_NAME\n", 16);
            break;
            FR_DENIED:
            uart_ps_send("FR_DENIED\n", 10);
            break;
            FR_EXIST:
            uart_ps_send("FR_EXIST\n", 9);
            break;
            FR_INVALID_OBJECT:
            uart_ps_send("FR_INVALID_OBJECT\n", 18);
            break;
            FR_WRITE_PROTECTED:
            uart_ps_send("FR_WRITE_PROTECTED\n", 19);
            break;
            FR_INVALID_DRIVE:
            uart_ps_send("FR_INVALID_DRIVE\n", 17);
            break;
            FR_NOT_ENABLED:
            uart_ps_send("FR_NOT_ENABLED\n", 15);
            break;
            FR_NO_FILESYSTEM:
            uart_ps_send("FR_NO_FILESYSTEM\n", 17);
            break;
            FR_MKFS_ABORTED:
            uart_ps_send("FR_MKFS_ABORTED\n", 16);
            break;
            FR_TIMEOUT:
            uart_ps_send("FR_TIMEOUT\n", 12);
            break;
            FR_LOCKED:
            uart_ps_send("FR_LOCKED\n", 10);
            break;
            FR_NOT_ENOUGH_CORE:
            uart_ps_send("FR_NOT_ENOUGH_CORE\n", 19);
            break;
            FR_TOO_MANY_OPEN_FILES:
            uart_ps_send("FR_TOO_MANY_OPEN_FILES\n", 23);
            break;
            FR_INVALID_PARAMETER:
            uart_ps_send("FR_INVALID_PARAMETER\n", 21);
            break;
        default:
            break;
        }
        return;
    }
    UINT file_size = f_size(&fil);
    f_lseek(&fil, 0);
    res = f_read(&fil, frame, file_size, &br);
    if(res != FR_OK || br != file_size){
        uart_ps_send("f_read failed\n", 14);
        uart_ps_send((u8*)res, 2);
        return;
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
    FRESULT res;
    //MKFS_PARM mkfs_param;
    //mkfs_param.fmt = FM_FAT32;
    //mkfs_param.n_fat = 1;
    //mkfs_param.align = 0;
    //mkfs_param.n_root = 512;
    //mkfs_param.au_size = 0;
    //res = f_mkfs("", FM_FAT32, 0, NULL, 512);



    res = f_mount(&fatfs, "", 1);

    u32 pix_idx = 0;
    // LCD clear
    LCD_Clear(BLUE);
    delay(100);
    u8* frame2disp = (u8*)malloc(200000);
    if(frame2disp == NULL){
        uart_ps_send("malloc failed\n\r", 15);
        return;
    }
    else{
        for(u32 i = 0; i < 200000; i++){
            frame2disp[i] = 0xFF;
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
