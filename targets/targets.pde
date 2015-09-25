
Target target1;
Target target2;
Target target3;

int counter = 0;

//JC was here
// JM aussi



void setup() {
  size(960, 540);

  target1 = new Target(random(0, width), random(0, height));
  target2 = new Target(random(0, width), random(0, height));
  target3 = new Target(random(0, width), random(0, height));
}

void draw() {
  
  awesome();
  
  background(0);  
  target1.drawSelf();
  target2.drawSelf();
  target3.drawSelf();
}

void mousePressed() {

  if (counter == 0) { 
    target1.strokeColor = color(255, 0, 0);
    target1.reset();
  } else if (counter == 1) {
    target2.strokeColor = color(0, 255, 0);
    target2.reset();
  } else if (counter ==2 ) {
    target3.reset();
  }

  counter ++;
  if(counter == 3) {
    counter =0;
  }
  
}


void awesome(){
 
  println("Awesome");
  
}