int w = 800;
int h = 800;
float r = 100;

ArrayList<Planet> planets = new ArrayList<Planet>();
int numPlans = 20;
int startPos = 100;


void setup() {
  size(800, 800);

  for (int i = 0; i < numPlans; ++i) {
    float planetSize = random(5, 20);
    planets.add(new Planet(startPos, planetSize, w/2.0, h/2.0, random(0.001, 0.01)));
    startPos += planetSize*2;
  }
}

void draw() {
  background(0);
  fill(255);
  ellipse(w/2.0, h/2.0, 50, 50);

  for (Planet p : planets) {
    p.move();
    p.draw();
  }
}