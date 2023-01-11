//Global Variables
PImage startImage;
float startImageX, startImageY, startImageWidth, startImageHeight;
PImage oogwayImage;
float oogwayImageX, oogwayImageY, oogwayImageWidth, oogwayImageHeight;
PImage rabbitStandingImage;
float rabbitStandingImageX, rabbitStandingImageY, rabbitStandingImageWidth, rabbitStandingImageHeight;
PImage raceImage; //10687379345_555c9954a1_b.jpeg
float raceImageX, raceImageY, raceImageWidth, raceImageHeight;
PImage pressFImage;
float pressFImageX, pressFImageY, pressFImageWidth, pressFImageHeight;
PImage gravestoneImage;
float gravestoneImageX, gravestoneImageY, gravestoneImageWidth, gravestoneImageHeight;
PImage givemoneyImage;
float givemoneyImageX, givemoneyImageY, givemoneyImageWidth, givemoneyImageHeight;
PImage lotteryImage;
float lotteryImageX, lotteryImageY, lotteryImageWidth, lotteryImageHeight;
PImage robberImage;
float robberImageX, robberImageY, robberImageWidth, robberImageHeight;
//
void startImage() {
  startImageX = HomeX4;
  startImageY = HomeY4;
  startImageWidth = HomeW; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  startImageHeight = HomeH;
}//End startImage
//
void oogwayImage() {
  oogwayImageX = TeachX;
  oogwayImageY = TeachY;
  oogwayImageWidth = TeachW;
  oogwayImageHeight = HomeH/1.2;
}
//
void rabbitStandingImage() {
  rabbitStandingImageX = HomeX;
  rabbitStandingImageY = HomeY+HomeH*1/3;
  rabbitStandingImageWidth = HomeW*1/2;
  rabbitStandingImageHeight = HomeH*11/20;
}
//
void raceImage() {
  raceImageX = rabbitStandingImageWidth;
  raceImageY = rabbitStandingImageY;
  raceImageWidth = rabbitStandingImageWidth;
  raceImageHeight = rabbitStandingImageHeight*1.02;
}
//
void pressFImage() {
  pressFImageX = HomeX2*10/10;
  pressFImageY = HomeY3;
  pressFImageWidth = HomeW;
  pressFImageHeight = HomeH;
}
//
void gravestoneImage() {
  gravestoneImageX = HomeX2;
  gravestoneImageY = HomeY2;
  gravestoneImageWidth = HomeW;
  gravestoneImageHeight = HomeH;
}
//
void givemoneyImage() {
  givemoneyImageX = HomeX6;
  givemoneyImageY = HomeY6;
  givemoneyImageWidth = HomeW;
  givemoneyImageHeight = HomeH;
}
//
void lotteryImage() {
  lotteryImageX = HomeX7;
  lotteryImageY = HomeY7;
  lotteryImageWidth = HomeW;
  lotteryImageHeight = HomeH;
}
//
void robberImage() {
  robberImageX = HomeX8;
  robberImageY = HomeY8;
  robberImageWidth = HomeW;
  robberImageHeight = HomeH;
}
