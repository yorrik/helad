module global;

const(char)* projectName = "hela";

/* Screen */

immutable enum AspectRatio {
    width = 16,
    height = 9
}

immutable enum WindowSize {
    width = 960,
    height = 540
}

/* World */

// mult(iplies) amount of nodes by x
immutable double node_mult = 1.0;

/// amount of nodes are the size of the window in pixels
/// divided by 10 then multiplied by the node_mult variable
immutable enum NodeCount {
    x = (WindowSize.width / 10) * node_mult,
    y = (WindowSize.height / 10) * node_mult
}

immutable enum NodeSize {
    x = NodeCount.x / WindowSize.width,
    y = NodeCount.y / WindowSize.height
}
