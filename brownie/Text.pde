//Global Variables
int NormalSize = 25, smallSize = 20, bigSize = 35;
PFont startTextFont1, choice1TextFont1, choice1TextFontBold, impactTextFont, lottoTextFont2;
String Option1 = "Walter";
float Option1X, Option1Y, Option1W, Option1H;
String Option2 = "Gustavo";
float Option2X, Option2Y, Option2W, Option2H;
String Teach = "You're A Highschool Chemistry Teacher";
float TeachX, TeachY, TeachW, TeachH;
String Delight = "Delightful!";
float DelightX, DelightY, DelightW, DelightH;
String Student = "Your Former Student Wants To Start A Business With You";
float StudentX, StudentY, StudentW, StudentH;
String acceptText1 = "Accept";
float acceptTextX1, acceptTextY1, acceptTextWidth1, acceptTextHeight1;
String declineText1 = "Decline";
float declineTextX1, declineTextY1, declineTextWidth1, declineTextHeight1;
String acceptChoiceText1 = "You Died 2 Years Later To Lung Cancer";
float acceptChoiceTextX1, acceptChoiceTextY1, acceptChoiceTextWidth1, acceptChoiceTextHeight1;
String declineChoiceText1 = "You Went On To Make Millions And Died 42 Years Later";
float declineChoiceTextX1, declineChoiceTextY1, declineChoiceTextWidth1, declineChoiceTextHeight1;
String resetText = "Start/Restart";
float resetTextX, resetTextY, resetTextWidth, resetTextHeight;
String lottoText1 = "You Started A Meth Business";
float lottoTextX1, lottoTextY1, lottoTextWidth1, lottoTextHeight1;
String okText7 = "Hmm";
float okTextX7, okTextY7, okTextWidth7, okTextHeight7;
String lottoText2 = "You Started A Chicken Business To Launder The Money";
float lottoTextX2, lottoTextY2, lottoTextWidth2, lottoTextHeight2;
String okText8 = "Yum";
float okTextX8, okTextY8, okTextWidth8, okTextHeight8;
String lottoText3 = "You Got Caught And Went To Jail For Life";
float lottoTextX3, lottoTextY3, lottoTextWidth3, lottoTextHeight3;
//
void Option1() {
  //Population
  Option1X = PathX;
  Option1Y = PathY;
  Option1W = PathButtonW;
  Option1H = PathButtonH;
  startTextFont1 = createFont("TimesNewRomanPS-BoldItalicMT", 600);
  //
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, NormalSize);
  text(Option1, Option1X, Option1Y, Option1W, Option1H);
}//End Option1
//
void Option2() {
  //Population
  Option2X = PathX1;
  Option2Y = PathY1;
  Option2W = PathButtonW1;
  Option2H = PathButtonH1;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, NormalSize);
  text(Option2, Option2X, Option2Y, Option2W, Option2H);
}//End Option2
//
void Teach() {
  //Population
  TeachX = HomeX3;
  TeachY = HomeY3;
  TeachW = HomeW;
  TeachH = HomeH/3;
  choice1TextFont1 = createFont("TimesNewRomanPSMT", 603);
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize);
  text(Teach, TeachX, TeachY, TeachW, TeachH);
  fill(resetWhite);
}//End Teach
//
void Delight() {
  //Population
  DelightX = OkX;
  DelightY = OkY;
  DelightW = OkW;
  DelightH = OkH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, NormalSize);
  text(Delight, DelightX, DelightY, DelightW, DelightH);
  fill(resetWhite);
}//End Teach
//
void Student() {
  //Population
  StudentX = HomeX;
  StudentY = HomeY;
  StudentW = HomeW;
  StudentH = HomeH*1/3;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize);
  text(Student, StudentX, StudentY, StudentW, StudentH);
  fill(resetWhite);
}//End Student
//
void Accept() {
  //Population
  acceptTextX1 = acceptButtonX1;
  acceptTextY1 = acceptButtonY1;
  acceptTextWidth1 = acceptButtonWidth1;
  acceptTextHeight1 = acceptButtonHeight1;
  choice1TextFontBold = createFont("TimesNewRomanPS-BoldMT", 601);
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFontBold, NormalSize); 
  text(acceptText1, acceptTextX1, acceptTextY1, acceptTextWidth1, acceptTextHeight1);}
  //End Accept
//
void declineText1() {
  //Population
  declineTextX1 = DeclineX;
  declineTextY1 = DeclineY;
  declineTextWidth1 = DeclineW;
  declineTextHeight1 = DeclineH;
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, smallSize); //CHANGE TO BOLD
  text(declineText1, declineTextX1, declineTextY1, declineTextWidth1, declineTextHeight1);
}//End declineText1
//
void acceptChoiceText1() {
  acceptChoiceTextX1 = HomeX5;
  acceptChoiceTextY1 = HomeY5/1.2;
  acceptChoiceTextWidth1 = HomeW/2;
  acceptChoiceTextHeight1 = HomeH*3/5;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, smallSize);
  text(acceptChoiceText1, acceptChoiceTextX1, acceptChoiceTextY1, acceptChoiceTextWidth1, acceptChoiceTextHeight1);
  fill(resetWhite);
}//End acceptChoiceText1()
  //
  /*fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, NormalSize);
  text(ripText1, ripTextX1, ripTextY1, ripTextWidth1, ripTextHeight1);
  fill(resetWhite);
}//End ripText1
//*/
void declineChoiceText1() {
  declineChoiceTextX1 = HomeX2;
  declineChoiceTextY1 = HomeY2;
  declineChoiceTextWidth1 = HomeW/2.6;
  declineChoiceTextHeight1 = HomeH;
  //
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize);
  text(declineChoiceText1, declineChoiceTextX1, declineChoiceTextY1, declineChoiceTextWidth1, declineChoiceTextHeight1);
  fill(resetWhite);
}//End declineChoiceText1()
//
void resetText() {
  //Population
  resetTextX = ResetX;
  resetTextY = ResetY;
  resetTextWidth = ResetW;
  resetTextHeight = ResetH;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(resetText, resetTextX, resetTextY, resetTextWidth, resetTextHeight);
}
//
void lottoText1() {
  //Population
  lottoTextX1 = HomeX6;
  lottoTextY1 = HomeY6; 
  lottoTextWidth1 = HomeW;
  lottoTextHeight1 = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, NormalSize);
  fill(red);
  text(lottoText1, lottoTextX1, lottoTextY1, lottoTextWidth1, lottoTextHeight1);
  fill(resetWhite);
}
//
void okText7() {
  //Population
  okTextX7 = lottoX;
  okTextY7 = lottoY;
  okTextWidth7 = lottoW;
  okTextHeight7 = lottoH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(okText7, okTextX7, okTextY7, okTextWidth7, okTextHeight7);
  fill(resetWhite);
}
//
void lottoText2() {
  //Population
  lottoTextX2 = HomeX7;
  lottoTextY2 = HomeY7/1.25; 
  lottoTextWidth2 = HomeW;
  lottoTextHeight2 = HomeH;
  lottoTextFont2= createFont("Impact", 281);
  //
  textAlign(CENTER, CENTER);
  textFont(lottoTextFont2, smallSize);
  fill(red);
  text(lottoText2, lottoTextX2, lottoTextY2, lottoTextWidth2, lottoTextHeight2);
}
//
void okText8() {
  //Population
  okTextX8 = lottoX1;
  okTextY8 = lottoY1;
  okTextWidth8 = lottoW1;
  okTextHeight8 = lottoH1;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(okText8, okTextX8, okTextY8, okTextWidth8, okTextHeight8);
  fill(resetWhite);
}
//
void lottoText3() {
  //Population
  lottoTextX3 = HomeX8;
  lottoTextY3 = HomeY8; 
  lottoTextWidth3 = HomeW;
  lottoTextHeight3 = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, NormalSize);
  fill(red);
  text(lottoText3, lottoTextX3, lottoTextY3, lottoTextWidth3, lottoTextHeight3);
  fill(resetWhite);
}
