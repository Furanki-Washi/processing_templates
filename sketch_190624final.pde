int MARGIN = 20;
color BG;
int R=0;
int B=0;
int G=0;

void setup() {
  size(300,300);
  stroke(255);
  smooth();
  frameRate(1);
}

void draw() {
  background(BG);
if( frameCount%1 == 0){
R+=5;
G+=15;
B+=25;
BG = color(R, G, B);
}
if(B>255){
  B=0;
}

if(G>255){
  G=0;
}

if(R>255){
  R=0;
}

  float s = second();
  float m = minute() + (s/60.0);
  float h = hour()%12 + (m/60.0);
  translate(width/2, height/2);
  rotate(radians(180));

  // dial
  pushMatrix();
  fill(255);
  noStroke();
  for(int i=0; i<60; i++){
    rotate(radians(6));
    ellipse(width/2-MARGIN,0,3,3);
  }
  for(int i=0; i<12; i++){
    rotate(radians(30));
    ellipse(width/2-MARGIN,0,10,10);
  }
  popMatrix();
  noFill();
  stroke(255);

  // second hand
  pushMatrix();
  rotate(radians(s*(360/60)));
  strokeWeight(1);
  line(0,0,0,width/2-MARGIN);
  popMatrix();

  // minute hand
  pushMatrix();
  rotate(radians(m*(360/60)));
  strokeWeight(2);
  line(0,0,0,width/2-MARGIN);
  popMatrix();

  // hour hand
  pushMatrix();
  rotate(radians(h*(360/12)));
  strokeWeight(4);
  line(0,0,0,width/3-MARGIN);
  popMatrix();
}

//https://yoppa.org/proga10/1419.html
