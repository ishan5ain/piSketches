int x;

TripSph ts1;

void setup() {
  size(300, 300);
  //fullScreen();
  x = 0;
  ts1 = new TripSph();
}

void draw () {
  background(0);
  //fill(255);
  //ellipse(width/2 + x, height/2, 50, 50);
  //x=x+5;
  
  //if ( x > width) {
  //  x = 0;
  //}
  
  ts1.drawTripSph();
  ts1.moveTripSph();
  ts1.bounce();
}
