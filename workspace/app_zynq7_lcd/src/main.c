#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"

#include "sleep.h"
#include "ff.h"

#define WIDTH  800
#define HEIGHT 480

//#define VDMA_BASEADDR	XPAR_AXI_VDMA_0_BASEADDR

#define VIDEO_BASEADDR0 0x01000000
#define VIDEO_BASEADDR1 VIDEO_BASEADDR0+WIDTH*HEIGHT*3


void load_sd_bmp(u8 *frame,unsigned char mode)
{
	static 	FATFS fatfs;
	FIL 	fil;
	u8		bmp_head[54];
	UINT 	*bmp_width,*bmp_height;
	UINT 	br;
	int 	i;

	f_mount(&fatfs,"",1);

	if(mode==0)f_open(&fil,"A.bmp",FA_READ);
	else f_open(&fil,"B.bmp",FA_READ);

	f_lseek(&fil,0);
	f_read(&fil,bmp_head,54,&br);

	bmp_width  = (UINT *)(bmp_head + 0x12);
	bmp_height = (UINT *)(bmp_head + 0x16);

	for(i=*bmp_height-1;i>=0;i--){
		f_read(&fil,frame+i*(*bmp_width)*3,(*bmp_width)*3,&br);
	}


	f_close(&fil);

	Xil_DCacheFlush();
}

//void VDMA_init(){
//  Xil_Out32((VDMA_BASEADDR + 0x000), 0x00000001);
//  Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0);
//  Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1);
//  Xil_Out32((VDMA_BASEADDR + 0x058), (WIDTH*3));
//  Xil_Out32((VDMA_BASEADDR + 0x054), (WIDTH*3));
//  Xil_Out32((VDMA_BASEADDR + 0x050),  HEIGHT);
//  Xil_Out32((VDMA_BASEADDR + 0x028),  0X00000000);
//}

int main(void) {

	load_sd_bmp((u8*)VIDEO_BASEADDR0,0);
	load_sd_bmp((u8*)VIDEO_BASEADDR1,1);
	//VDMA_init();

//	while(1){
//		Xil_Out32((VDMA_BASEADDR + 0x028),  0x00000000);
//		sleep(1);
//		Xil_Out32((VDMA_BASEADDR + 0x028),  0x00000001);
//		sleep(1);
//	}
}
