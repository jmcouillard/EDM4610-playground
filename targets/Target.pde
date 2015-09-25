class Target {

  float x = 0;
  float y = 0;
  float life = 0;
  color strokeColor = color(255);

  Target(float xStart, float yStart) {
    println("nouvelle target");
    x = xStart;
    y = yStart;
  }

  void drawSelf() {
    noFill();
    strokeWeight(10);
    stroke(strokeColor, 255 * (1 - life));

    for (int i=1; i<=3; i++) {
      ellipse(x, y, 50 * life * i, 50*life * i);
    }

    life += 0.02;
  }
  
  void reset() {
    life = 0;
    x = mouseX;
    y = mouseY;
  }
}