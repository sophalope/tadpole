class Tadpole {
  float angle = 0.0;
  float x;
  float y;
  // float acc;
  float easing;
float segLength = 100;

  Tadpole() {
    x = mouseX;
    y = mouseY;
    //acc = 0.1;
    easing = 0.05;
  }
  void display() {
    angle = atan2(- (mouseY - height/2), -(mouseX - width/2) );
    //noStroke();
    ellipse(x, y, 60, 60);
    //pushMatrix();
   translate(x,y);
   pushMatrix();
 // segment(x, y, angle); 
 // segment(segLength, 0, angle2);
  popMatrix();
   // rotate(radians((pmouseX-mouseX)-(pmouseY-mouseY)));
  // rotate(c);
  //rotate(radians((pmouseX-pmouseY)-(mouseX-mouseY)));
  //float x = modelX(100,10,0);
 //float y = modelY(100,10,0);
// rotate(radians( pmouseX ) * -1);
 //rotate(radians( pmouseY ) * -1);
    //triangle(x,y-30,x,y+30,x-60,y);
     //popMatrix();
   
  }
  void move() {
    float targetX = mouseX;
    float dx = targetX - x;
    x += dx * easing;
    //x += dx + acc;
    float targetY = mouseY;
    float dy = targetY - y;
    y += dy * easing;
    //y += dy + acc;
  }
  
  void wiggle(){
    for(int i = 0; i < 3; i++) {
     beginShape();
    for(float w = x; w < x + segLength; w += 5) {
      float h = y;
      h += 200 * sin(w * 0.02 * TWO_PI / 3) * pow(abs(sin(w * 0.001 + (pmouseY-mouseY) * 0.02 + (pmouseX-mouseX) * 0.02)), 5);
      curveVertex(w, h);
      segment(h,w,angle);
    }    
    endShape();
    
  }
  }
  void segment(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}
}
