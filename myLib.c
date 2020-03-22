#include "myLib.h"

// The start of the video memory
unsigned short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// Define shadowOAM
OBJ_ATTR shadowOAM[128];

// Pause code execution until vertical blank begins
void waitForVBlank() {
    while(SCANLINECOUNTER > 160);
    while(SCANLINECOUNTER < 160);
}

// Set up and begin a DMA transfer
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    // Turn DMA off
    dma[channel].cnt = 0;

    // Set source and destination
    dma[channel].src = src;
    dma[channel].dst = dst;

    // Set control and begin
    dma[channel].cnt = cnt | DMA_ON;
}

// Hides all sprites in the shadowOAM
void hideSprites() {
    // TODO 1.2: Complete this function
    // Loop through all the shadowOAM sprites and hide them.
    // This is where you will see the dreaded Cornerface if you do not implement it correctly
    for (int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}

// Return true if the two rectangular areas are overlapping
// Return true if the two rectangular areas are overlapping
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {

    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}