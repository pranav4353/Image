//Global Variables
float imgX, imgY, imgWidth, imgHeight, picWidthAdjusted, picHeightAdjusted, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger = false, heightLarger = false;
//
void setup() {
  size (750, 500); //Landscape
  pic = loadImage("Xenoblade-Chronicles-2-Torna-The-Golden-Country-Tumblr.jpg"); //Dimentions: width: 400 height: 288
  //Note: Dimensions are not found in the image file/ Right Click, properties, details
  //Algorithm: find the larger dimention for aspect ratio (comparison of two numbers)
  int picWidth = 400; 
  int picHeight = 288;
  if ( picWidth >= picHeight) { //Image Dimension Comparison
    //True is Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimention Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //varify variables details
  //Aspect Ratio
  //Note: Image line IFs can be summerized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  //Note:
  //Answers must be 1.0 and between 0 and 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //ratio of 0-1 similar to style="height:auto" (websites)
  //
  imgX = width*0;
  imgY = height*0;
  imgWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight = height-1;
  //
  //Combination of Pouplation of Image with Pouplation of Rect()
  picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;
  //Note: println() also varifies decimal places, complier will truncate
  println(imgX, imgY, picWidthAdjusted, picHeightAdjusted);
}//End setup
//
void draw() {
  rect(imgX, imgY, imgWidth, imgHeight); //Background image
  image(pic, imgX, imgY, imgWidth, imgHeight);
  image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  //image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  //image();
}//End draw
//
//void keyPressed() {}//end keyPressed
// 
//void mousePressed() {}//End mousePressed
//
//End MAIN Program
//
//Ajusted image variable for Aspect Ratio: entire image will be smaller due to aspect ratio
