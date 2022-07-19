//Global Variables
PImage pic1, pic2;
float imgX1, imgY1, imgWidth1, imgHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float imgX2, imgY2, imgWidth2, imgHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger1 = false, heightLarger1 = false;
Boolean widthLarger2 = false, heightLarger2 = false;

//
//
void setup() {
  size (750, 500); //Landscape
  //
  //Pouplation of Image
  pic1 = loadImage("../Images/Xenoblade-Chronicles-2-Torna-The-Golden-Country-Tumblr.jpg"); //Dimentions: width: 400 height: 288
  pic2 = loadImage("../Images/thumb-1920-166198.jpg"); //Dimentions: width: 1920 height: 1080
  //Note: Dimensions are not found in the image file/ Right Click, properties, details
  //Algorithm: find the larger dimention for aspect ratio (comparison of two numbers)
  int picWidth1 = 400; 
  int picHeight1 = 288;
  int picWidth2 = 1920; 
  int picHeight2 = 1080;
  if ( picWidth1 >= picHeight1 ) { //Image Dimension Comparison
    //True is Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  }//End Image Dimention Comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //varify variables details
  //Aspect Ratio
  //Note: Image line IFs can be summerized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1/imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageLargerDimension1/imageLargerDimension1;
  //
  if ( picWidth2 >= picHeight2 ) { //Image Dimension Comparison
    //True is Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  }//End Image Dimention Comparison
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2); //varify variables details
  //Aspect Ratio
  //Note: Image line IFs can be summerized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/imageLargerDimension2;
  if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2/imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2/imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/imageLargerDimension2;
  //Note:
  //Answers must be 1.0 and between 0 and 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //ratio of 0-1 similar to style="height:auto" (websites)
  //
  //Pouplation of rectangle
  imgX1 = width*1/4;
  imgY1 = height*0;
  imgWidth1 = (width-1)*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight1 = (height-1)*3/5;
  imgX2 = width*0;
  imgY2 = height*3/7;
  imgWidth2 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imgHeight2 = (height-1)*4/7;
  //
  //Combination of Pouplation of Image with Pouplation of Rect()
  picWidthAdjusted1 = imgWidth1 * imageWidthRatio1;
  picHeightAdjusted1 = imgHeight1 * imageHeightRatio1;
  //Note: println() also varifies decimal places, complier will truncate
  println(imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);
  picWidthAdjusted2 = imgWidth2 * imageWidthRatio2;
  picHeightAdjusted2 = imgHeight2;
  println(imgX2, imgY2, picWidthAdjusted2, picHeightAdjusted2);
}//End setup
//
void draw() {
  //rect(imgX1, imgY1, imgWidth1, imgHeight1); //Top Half of canvas
  //rect(imgX2, imgY2, imgWidth2, imgHeight2); //Bottom Half of canvas
  image(pic1, imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);
  image(pic2, imgX2, imgY2, picWidthAdjusted2, picHeightAdjusted2);
}//End draw
//
//void keyPressed() {}//end keyPressed
// 
//void mousePressed() {}//End mousePressed
//
//End MAIN Program
//
//Ajusted image variable for Aspect Ratio: entire image will be smaller due to aspect ratio
