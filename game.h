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
