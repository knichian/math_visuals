#include "../external/raylib/src/raylib.h"
#include <emscripten/emscripten.h>

const int screenWidth = 800;
const int screenHeight = 450;

void UpdateDrawFrame(void) {
    // Update-Game:


    // Draw-Frame:
    BeginDrawing();

        ClearBackground(RAYWHITE);
        DrawText("Hello-Friend...", 190, 200, 30, BLACK);

    EndDrawing();
}

int main(void) {

    InitWindow(screenWidth, screenHeight, "Title!");
    emscripten_set_main_loop(UpdateDrawFrame, 0, 1);
    CloseWindow();

    return 0;
}