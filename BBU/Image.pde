//Global Variables
PImage BBLogo;
float BBLogoX, BBLogoY, BBLogoW, BBLogoH;
PImage Waltre;
float WaltreX, WaltreY, WaltreW, WaltreH;
PImage Jesse;
float JesseX, JesseY, JesseW, JesseH;
PImage Jessad; 
float JessadX, JessadY, JessadW, JessadH;
PImage dbed;
float dbedX, dbedY, dbedW, dbedH;
PImage Moolah;
float MoolahX, MoolahY, MoolahW, MoolahH;
PImage givemoneyImage;
float givemoneyImageX, givemoneyImageY, givemoneyImageWidth, givemoneyImageHeight;
PImage lotteryImage;
float lotteryImageX, lotteryImageY, lotteryImageWidth, lotteryImageHeight;
PImage robberImage;
float robberImageX, robberImageY, robberImageWidth, robberImageHeight;
//
void BBLogo() {
  BBLogoX = HomeX4;
  BBLogoY = HomeY4;
  BBLogoW = HomeW; 
  BBLogoH = HomeH;
}//End BBLogo
//
void Waltre() {
  WaltreX = TeachX;
  WaltreY = TeachY;
  WaltreW = TeachW;
  WaltreH = HomeH/1.2;
}
//
void Jesse() {
  JesseX = HomeX;
  JesseY = HomeY+HomeH*1/3;
  JesseW = HomeW*1/2;
  JesseH = HomeH*11/20;
}
//
void Jessad() {
  JessadX = JesseW;
  JessadY = JesseY;
  JessadW = JesseW;
  JessadH = JesseH*1.02;
}
//
void dbed() {
  dbedX = HomeX2*10/10;
  dbedY = HomeY3;
  dbedW = HomeW;
  dbedH = HomeH;
}
//
void Moolah() {
  MoolahX = HomeX2;
  MoolahY = HomeY2;
  MoolahW = HomeW;
  MoolahH = HomeH;
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
