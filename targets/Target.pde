class Target {

  float jcx = 0;
  float jcy = 0;
  float jclife = 0;
  color strokeColor = color(255);

  Target(float jcxStart, float jcyStart) {
    println("nouvelle target de JC");
    jcx = jcxStart;
    jcy = jcyStart;
  }

  void drawSelf() {
    noFill();
    strokeWeight(10);
    stroke(strokeColor, 255 * (1 - jclife));

    for (int jc=1; jc<=3; jc++) {
      ellipse(jcx, jcy, 50 * jclife * jc, 50*jclife * jc);
    }

    jclife += 0.02;
  }
  
  void reset() {
    jclife = 0;
    jcx = mouseX;
    jcy = mouseY;
  }
}
