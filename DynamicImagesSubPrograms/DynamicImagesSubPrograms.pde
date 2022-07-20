//Global Variables
PImage pic1, pic2;
//
void setup() {
  size (750, 500); //Landscape
  //
  populatingVariable();
  //
  imageDraw();
  //
}//End setup
//
void draw() {//Note: DRAW Loop repeats 60/sec, static images should be in SETUP, "system resourses"
  //Empty DRAW Loop, must be present for JAVA Compiler
}//End draw
//
void keyPressed() 
{
  rect(0, 0, width, height);
}//end keyPressed
// 
void mousePressed() 
{
  imageDraw();
}//End mousePressed
//
//End MAIN Program
//
//Ajusted image variable for Aspect Ratio: entire image will be smaller due to aspect ratio
