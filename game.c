#include "game.h"
#include "myLib.h"


void initSnake() {
    snakeHead.active = 1;
    snakeHead.width = 16;
    snakeHead.height = 16;
    snakeHead.col = SCREENWIDTH/2 - (snakeHead.width/2);
    snakeHead.row = SCREENHEIGHT/2 - (snakeHead.height/2) - 10;
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

    if (BUTTON_HELD(BUTTON_UP)) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKEHAPPY;
        snakeHead.row-=snakeHead.rdel;
        
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKESAD;
        snakeHead.row+=snakeHead.rdel;
        
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        snakeBody.col = snakeHead.col;
        snakeBody.row = snakeHead.row;
        snakeHead.aniState = SNAKESAD;
        snakeHead.col-=snakeHead.cdel;
        
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
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
    // snake head
    shadowOAM[0].attr0 = snakeHead.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = snakeHead.col | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(snakeHead.aniState * 2, 0);

    // snake body
    shadowOAM[1].attr0 = snakeBody.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[1].attr1 = snakeBody.col | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_TILEID(snakeBody.aniState * 2, 0);


    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    

    
    // check snakeHead collision with food 


    //for (int i = SNAKEARRAYLENGTH; i > 0; i--) {
    //    snake[i].row = snake[i-1].row;
    //    snake[i].col = snake[i-1].col;
    //}
}

void updateGame() {
    
    drawApple();
    
    updateSnake();
    if (collision(snakeHead.col, snakeHead.row, snakeHead.width, snakeHead.height, apple.col, apple.row, apple.width, apple.height)) {
        apple.active = 0;
        shadowOAM[2].attr0 = apple.row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[2].attr1 = apple.col | ATTR1_SMALL;
        shadowOAM[2].attr2 = ATTR2_TILEID(snakeBody.aniState * 2, 0);
        DMANow(3, shadowOAM, OAM, 128 * 4);

    }
}

void drawApple() {
    if (apple.active) {
        apple.width = 16;
        apple.height = 16;
        //apple.col = (rand() % 240);
        //apple.row = (rand() % 160);
        apple.col = 30;
        apple.row = 40;
        apple.active = 1;
        apple.aniState = APPLE;

        shadowOAM[2].attr0 = apple.row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[2].attr1 = apple.col | ATTR1_SMALL;
        shadowOAM[2].attr2 = ATTR2_TILEID(apple.aniState * 2, 0);
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
}
