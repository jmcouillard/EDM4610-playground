class Target {

  float x = 0;
  float y = 0;
  float jclife = 0;
  color strokeColor = color(255);

  Target(float xStart, float yStart) {
    println("nouvelle target de JC");
    x = xStart;
    y = yStart;
  }

  void drawSelf() {
    noFill();
    strokeWeight(10);
    stroke(strokeColor, 255 * (1 - jclife));

    for (int i=1; i<=3; i++) {
      ellipse(x, y, 50 * jclife * i, 50*jclife * i);
    }

    jclife += 0.02;
  }
  
  void reset() {
    life = 0;
    x = mouseX;
    y = mouseY;
  }
}
