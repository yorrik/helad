module program;

import std.stdio;

import raylib;
import global;

/// main game loop
void run() {
    startWindow();

    while (!WindowShouldClose()) {
        draw();
        input();
        logic();
    }
}

/// creates a new window based on global settings
private void startWindow() {
    InitWindow(
        WindowSize.x,
        WindowSize.y,
        projectName
    );

    SetTargetFPS(60);
}

/// object draw loop
private void draw() {
    BeginDrawing();
    DrawFPS(20, 20);

    ClearBackground(Colors.BLACK);
    EndDrawing();
}

/// user input loop
private void input() {
    switch (GetKeyPressed()) {
    case KeyboardKey.KEY_A:
        printf("hi");
        break;
    default:
        break;
    }
}

/// computes state data
private void logic() {

}
