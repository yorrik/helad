module lib.program;

import std.stdio;

import global;
private import rl = raylib;
private import lib.sim.world : World;

World world;

/// main game loop
void run() {
    world = new World();
    startWindow();

    while (!rl.WindowShouldClose()) {
        draw();
        input();
        logic();
    }
}

/// creates a new window based on global settings
private void startWindow() {
    rl.InitWindow(
        WindowSize.width,
        WindowSize.height,
        projectName
    );

    rl.SetTargetFPS(60);
}

/// object draw loop
private void draw() {
    rl.BeginDrawing();
    rl.DrawFPS(20, 20);

    world.draw();

    rl.ClearBackground(rl.Colors.BLACK);
    rl.EndDrawing();
}

/// user input loop
private void input() {
    switch (rl.GetKeyPressed()) {
    case rl.KeyboardKey.KEY_A:
        printf("hi");
        break;
    default:
        break;
    }
}

/// computes state data
private void logic() {

}
