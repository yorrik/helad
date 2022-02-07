module global;

const(char)* projectName = "hela";

/// multiplier of world nodes
immutable int mult = 1;

/// number of world nodes
immutable enum WorldSize {
    x = (WindowSize.x / 10) * mult,
    y = (WindowSize.y / 10) * mult
}

/// window resolution
immutable enum WindowSize {
    x = 920,
    y = 600
}
