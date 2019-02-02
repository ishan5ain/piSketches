class TripSph {
  float [] x = new float[3];
  float [] y = new float[3];
  float [] s = new float[3];
  float xoff;
  float yoff;
  int xfactor;
  int yfactor;

  TripSph() {
    for (int i = 0; i < 3; i++) {
      this.x[i] = random(width);
      this.y[i] = random(height);
      this.s[i] = random(15, 50);
    }

    xoff = 0.01;
    yoff = 0.01;
    xfactor = 1;
    yfactor = 1;
  }


  void drawTripSph () {
    pushStyle();
    
    fill(255);
    noStroke();
    
    for (int i = 0; i < 3; i++) {
      ellipse(this.x[i], this.y[i], this.s[i], this.s[i]);
    }

    stroke(255);
    line(this.x[0], this.y[0], this.x[1], this.y[1]);
    line(this.x[1], this.y[1], this.x[2], this.y[2]);
    line(this.x[2], this.y[2], this.x[0], this.y[0]);
    
    popStyle();
  }
  
  void moveTripSph() {
    this.x[0] = this.x[0] + noise(xoff) * this.xfactor;
    this.x[1] = this.x[1] + noise(yoff) * this.xfactor;
    this.x[2] = this.x[2] + noise(xoff) * this.xfactor;
    this.y[0] = this.y[0] + noise(xoff) * this.yfactor;
    this.y[1] = this.y[1] + noise(xoff) * this.yfactor;
    this.y[2] = this.y[2] + noise(yoff) * this.yfactor;
    xoff = xoff + 0.0000000005;
    yoff = yoff + 0.2;
  }
  
  void bounce() {
    for (int i = 0; i < 3; i++) {
      if ( this.x[i] > width || this.x[i] < 0) {
        //this.x[i] = random(width);
        this.xfactor = -this.xfactor;
      }
      
      if (this.y[i] > height || this.y[i] < 0) {
        //this.y[i] = random(height);
        this.yfactor = -this.yfactor;
      }
    }
    
  }

}
