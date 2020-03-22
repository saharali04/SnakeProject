# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1
typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int active;
} SNAKESPRITE;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniState;
    int active;
} APPLESPRITE;

SNAKESPRITE snake[28];
int SNAKELENGTH;
SNAKESPRITE snakeHead;
SNAKESPRITE snakeBody;

APPLESPRITE apple;


enum { SNAKENEUTRAL, SNAKESAD, SNAKEHAPPY, SNAKEBODY, APPLE, SNAKEIDLE};

void initSnake();
void drawSnake();
void updateSnake();
void drawApple();
void updateGame();
# 2 "game.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void waitForVBlank();




typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 141 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 184 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 195 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 235 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "game.c" 2


void initSnake() {
    snakeHead.active = 1;
    snakeHead.width = 16;
    snakeHead.height = 16;
    snakeHead.col = 240/2 - (snakeHead.width/2);
    snakeHead.row = 160/2 - (snakeHead.height/2) - 10;
    snakeHead.cdel = 4;
    snakeHead.rdel = 4;
    snakeHead.aniCounter = 0;
    snakeHead.aniState = SNAKENEUTRAL;

    snakeBody.width = 4;
    snakeBody.height = 4;
    snakeBody.col = snakeHead.col + 4;
    snakeBody.row = snakeHead.row;
    snakeBody.aniState = SNAKEBODY;
}

void updateSnake() {
    apple.active = 1;
    if (snakeHead.aniState != SNAKEIDLE) {
        snakeHead.prevAniState = snakeHead.aniState;
        snakeHead.aniState = SNAKEIDLE;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKEHAPPY;
        snakeHead.row-=snakeHead.rdel;

    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKESAD;
        snakeHead.row+=snakeHead.rdel;

    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKESAD;
        snakeHead.col-=snakeHead.cdel;

    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKEHAPPY;
        snakeHead.col+=snakeHead.cdel;

    }

    if (snakeHead.aniState == SNAKEIDLE) {
        snakeHead.aniState = SNAKENEUTRAL;
    } else {
        snakeHead.aniCounter++;
    }

    shadowOAM[0].attr0 = snakeHead.row | (0<<13) | (0<<14);
    shadowOAM[0].attr1 = snakeHead.col | (1<<14);
    shadowOAM[0].attr2 = ((0)*32+(snakeHead.aniState * 2));


    shadowOAM[1].attr0 = snakeBody.row | (0<<13) | (0<<14);
    shadowOAM[1].attr1 = snakeBody.col | (1<<14);
    shadowOAM[1].attr2 = ((0)*32+(snakeBody.aniState * 2));


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
# 87 "game.c"
}

void updateGame() {

    drawApple();

    updateSnake();
    if (collision(snakeHead.col, snakeHead.row, snakeHead.width, snakeHead.height, apple.col, apple.row, apple.width, apple.height)) {
        apple.active = 0;
        shadowOAM[2].attr0 = apple.row | (0<<13) | (0<<14);
        shadowOAM[2].attr1 = apple.col | (1<<14);
        shadowOAM[2].attr2 = ((0)*32+(snakeBody.aniState * 2));
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    }
}

void drawApple() {
    if (apple.active) {
        apple.width = 16;
        apple.height = 16;


        apple.col = 30;
        apple.row = 40;
        apple.active = 1;
        apple.aniState = APPLE;

        shadowOAM[2].attr0 = apple.row | (0<<13) | (0<<14);
        shadowOAM[2].attr1 = apple.col | (1<<14);
        shadowOAM[2].attr2 = ((0)*32+(apple.aniState * 2));
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    }
}
