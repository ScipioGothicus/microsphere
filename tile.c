#include "raylib.h"

void drawTiles(char *sourceFile, int size) {
	Image sourceImage = LoadImage(sourceFile);
	ImageFromImage(sourceImage, {0,0,0,0});
}

