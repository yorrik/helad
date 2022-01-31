module global;

const(char)* projectName = "hela";

// Divide window size by aspect ratio
// to split it into nodes
immutable enum WorldSize {
    x = WindowSize.x / 16,
    y = WindowSize.y / 10,
}

/// Resolution of window
/// 16:10 aspect ratio, 960x600
immutable enum WindowSize {
    x = 60 * 16,
    y = 60 * 10
}
