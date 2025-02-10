#include "raylib.h"
#include "player.h"

int main(void)
{
	Player player = {400, 300, 10, 10};
    // Initialization
    const int screenWidth = 800;
    const int screenHeight = 600;

    InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");
    SetTargetFPS(60);               // Set our game to run at 60 frames-per-second
	
    // Main game loop
	while (!WindowShouldClose())    // Detect window close button or ESC key
	{
        // Update
		handleMove(&player);		

        // Draw
        //----------------------------------------------------------------------------------
		BeginDrawing();

		ClearBackground(RAYWHITE);

		DrawCircle(player.x, player.y, 30.0f, GREEN);
		EndDrawing();
		//----------------------------------------------------------------------------------
    }

    // De-Initialization
    CloseWindow();        // Close window and OpenGL context

    return 0;
}
