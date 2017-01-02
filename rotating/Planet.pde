class Planet {
  float r;
  float cx;
  float cy;
  float theta = random(360);
  float dT;
  float x;
  float y;
  float size;


  Planet(float rad, float s, float ccx, float ccy, float changeT) {
    r = rad;
    cx = ccx;
    cy = ccy;
    dT = changeT;
    x = cos(theta)*r/2.0 + cx;
    y = sin(theta)*r/2.0 + cy;
    size = s;
  }


  void move() {
    theta += dT;
    x = cos(theta)*r/2.0 + cx;
    y = sin(theta)*r/2.0 + cy;
  }

  void draw() {
    fill(255);
    ellipse(x, y, size, size);
    noFill();
    stroke(255);
    ellipse(cx, cy, r, r);
  }
}