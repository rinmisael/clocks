float  second, minute, hour;
int radio1, radio2, radio3;

void setup () {
  size (600, 600);
  radio1 = 60;
  radio2 = 20;
  radio3 = 10;
  ellipseMode(RADIUS);
  background(0);
  noFill();
  textAlign(CENTER, CENTER);
  textSize(16);
}

void draw() {
  second = map(second(), 0, 59, 0, TWO_PI);
  minute = map(minute(), 0, 59, 0, TWO_PI);
  hour = hour();
  // hour
  fill(0, 10);
  translate (width/2, height/2);
  stroke(250, 0, 0);
  circle(0, 0, radio1);
  fill(255);
  text(nf(hour(), 2) + " : " + nf(minute(), 2) + " : " + nf(second(), 2), 0, 0);
  noFill();

  // minute
  rotate(minute);
  stroke(0, 250, 0);
  circle(width/3, 0, radio2);

  // second
  translate (width/3, 0);
  rotate(second);
  stroke(0, 0, 250);
  circle(70, 0, radio3);
}
