// center point
float centerX = 0, centerY = 0;

float accelX, accelY;
float springing = .0009, damping = .98;

void setup() {
  size(640, 360);
  //Centrer
  centerX = width/2;
  centerY = height/2;

  noStroke();
  frameRate(39);
}

void draw() {
  //fade background
  background(100, 0, 0);
  drawShape();
  moveShape();
}

void drawShape() {
  // draw polygon
  noFill();
  if(mousePressed){
      stroke(255,250,255);
      fill(255);
     } else {
      stroke(100,100,200);       
     }
  rect(centerX- 10, centerY- 10 /2,20,20);
 
}

void moveShape() {
  //move center point
  float deltaX = mouseX-centerX;
  float deltaY = mouseY-centerY;

  // create springing effect
 deltaX *= springing;
  deltaY *= springing;
 accelX += deltaX;
 accelY += deltaY;

  // move predator's center
  centerX += accelX;
  centerY += accelY;

  // slow down springing
  accelX *= damping;
  accelY *= damping;
}

