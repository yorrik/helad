module lib.world;

private import rl = raylib;
private import global;
private import lib.sim.map : Map;

class World {
public:
  Map map;
  void draw() {
    map.draw();
  }

private:

public:
  this() {
    
  }
}
