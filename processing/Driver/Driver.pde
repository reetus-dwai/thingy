float batteryPercent;
int speed; // mph

void setup(){
  fullScreen();
  speed = 17;
}

void draw(){
  background(255);
  
  batteryPercent = map(mouseX, 0, width, 0, 100);
  
  // battery
  push();
  noStroke();
  fill(200);
  rect(0, 0, width, 40);
  fill(0, 255, 0);
  rect(0, 0, width * (batteryPercent / 100), 40);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  text(floor(batteryPercent) + "%", width/2, 17);
  pop();
  
  // speed
  push();
  noFill();
  rect(0, height - 101, 100, 100);
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(0);
  noStroke();
  text(speed, 50, height - 55);
  pop();
}
