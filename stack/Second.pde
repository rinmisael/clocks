class Second {
  PVector pos;
  PVector vel;
  int wh, seg, target;
  float x;

  Second(int _seg, float _x, float _velY) {
    x = _x;
    vel =  new PVector(0, _velY);
    wh = 10;
    pos = new PVector( x, 0);
    seg = _seg;
    target = height - (seg * wh);
  }
  void show() {
    int s = second();
    rect(pos.x, pos.y, wh, wh);
    pos.y = constrain(pos.y, 0, target);
    if (seg <= s && pos.y < target) {
      pos.add(vel);
    }
    if (s == 0) {
      pos = new PVector(x, 0);
    }
  }
}
