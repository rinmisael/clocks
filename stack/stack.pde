Minute[] minutes =  new Minute[60];
Second[] seconds =  new Second[60];
Hour[] hours =  new Hour[24];

void setup() {
  size(400, 700);
  for (int i = 0; i < seconds.length; i++ ) {
    if (i < hours.length) {
      hours[i] = new Hour(i, width * 0.24, 1.1);
    }
    minutes[i] = new Minute(i, width/2 - 5 , 2.2);
    seconds[i] = new Second(i, width * 0.74, 3.3);
  }
  noStroke();
}

void draw() {
  fill(0, 50);
  rect(0, 0, width, height);
  fill(255);
  for (int i = 0; i < seconds.length; i++ ) {
    minutes[i].show();
    seconds[i].show();
    if (i < hours.length) {
      hours[i].show();
    }
  }
}
