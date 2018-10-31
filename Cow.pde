import processing.sound.*;
SoundFile file;

String name ;
int i = 0;
PImage img;
color from = color(204, 102, 0);
color to = color(0, 102, 153);
float b = 0;

void setup(){
  size(800, 600);
  background( 255, 9, 100);
  frameRate(10);
  img = loadImage("709-cow.png");
  fill(204, 102, 0);
  strokeWeight(20);
  imageMode(CENTER);
  file = new SoundFile(this, "moo.wav");
  setupcows();
}

void draw(){
  b = b + 0.1;
  if (b > 1.0){
    b = 0;
     to = color(204, 102, 0);
     from = color(0, 102, 153);
     if (file.isPlaying()){
     }else{
     file.play();
     }
  }
  println( b);
  color interA = lerpColor(from, to, b);
  background( interA);
   translate( i, 10);
   int c = 0;
   while (c < 10){
     float x = random(0,width);
     float y = random(0, height);
     cow( x, y);
     c++;
   }
   
   pushMatrix();
   rotate(i);
   rect (i, 100, 100, 100);
   popMatrix();
  i ++;
  if (i > width){
    i = 0;
  }
  drawcows();
}

void cow(float x, float  y){
  float w = random(50, 150);
  float h = random( 130, 160);
  //tint ( int(random(255)) , int(random(255)), 25, 50);
  image( img,x, y, w, h);
  
  
}
