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
String AcceptT = "Accept";
float AcceptTX, AcceptTY, AcceptTW, AcceptTH;
String DeclineT = "Decline";
float DeclineTX, DeclineTY, DeclineTW, DeclineTH;
String CancerT = "You Died 2 Years Later To Lung Cancer";
float CancerTX, CancerTY, CancerTW, CancerTH;
String Money = "You Went On To Make Millions And Died 42 Years Later";
float MoneyTX, MoneyTY, MoneyTW, MoneyTH;
String BeginT = "Start/Restart";
float BeginTX, BeginTY, BeginTW, BeginTH;
String Business = "You Started A Meth Business";
float BusinessX, BusinessY, BusinessW, BusinessH;
String Thinking = "Hmm";
float ThinkingX, ThinkingY, ThinkingW, ThinkingH;
String Chicken = "You Started A Chicken Business To Launder The Money";
float ChickenX, ChickenY, ChickenW, ChickenH;
String okText8 = "Yum";
float YummyX, YummyY, YummyW, YummyH;
String Jail = "You Got Caught And Went To Jail For Life";
float JailX, JailY, JailW, JailH;
float QuitTX, QuitTY, QuitTW, QuitTH;
String quitText = "Exit (E)";
PFont QuitF;
//
void Option1() {
  //Population
  Option1X = PathX;
  Option1Y = PathY;
  Option1W = PathW;
  Option1H = PathH;
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
  Option2W = PathW1;
  Option2H = PathH1;
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
  AcceptTX = HomeX;
  AcceptTY = AcceptBY;
  AcceptTW = AcceptBW/2;
  AcceptTH = AcceptBH;
  choice1TextFontBold = createFont("TimesNewRomanPS-BoldMT", 601);
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize); 
  text(AcceptT, AcceptTX, AcceptTY, AcceptTW, AcceptTH);}
  //End Accept
//
void DeclineT() {
  //Population
  DeclineTX = DeclineX;
  DeclineTY = DeclineY;
  DeclineTW = DeclineW;
  DeclineTH = DeclineH;
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize); //CHANGE TO BOLD
  text(DeclineT, DeclineTX, DeclineTY, DeclineTW, DeclineTH);
}//End DeclineT
//
void CancerT() {
  CancerTX = HomeX5;
  CancerTY = HomeY5/1.2;
  CancerTW = HomeW/2;
  CancerTH = HomeH*3/5;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, smallSize);
  text(CancerT, CancerTX, CancerTY, CancerTW, CancerTH);
  fill(resetWhite);
}//End CancerT()
  //
  /*fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, NormalSize);
  text(ripText1, ripTextX1, ripTextY1, ripTextWidth1, ripTextHeight1);
  fill(resetWhite);
}//End ripText1
//*/
void Money() {
  MoneyTX = HomeX2;
  MoneyTY = HomeY2;
  MoneyTW = HomeW/2.6;
  MoneyTH = HomeH;
  //
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, NormalSize);
  text(Money, MoneyTX, MoneyTY, MoneyTW, MoneyTH);
  fill(resetWhite);
}//End Money()
//
void BeginT() {
  //Population
  BeginTX = ResetX;
  BeginTY = ResetY;
  BeginTW = ResetW;
  BeginTH = ResetH;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(BeginT, BeginTX, BeginTY, BeginTW, BeginTH);
}
//
void Business() {
  //Population
  BusinessX = HomeX6;
  BusinessY = HomeY6; 
  BusinessW = HomeW;
  BusinessH = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, NormalSize);
  fill(red);
  text(Business, BusinessX, BusinessY, BusinessW, BusinessH);
  fill(resetWhite);
}
//
void Thinking() {
  //Population
  ThinkingX = ThinkerX;
  ThinkingY = ThinkerY;
  ThinkingW = ThinkerW;
  ThinkingH = ThinkerH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(Thinking, ThinkingX, ThinkingY, ThinkingW, ThinkingH);
  fill(resetWhite);
}
//
void Chicken() {
  //Population
  ChickenX = HomeX7;
  ChickenY = HomeY7/1.25; 
  ChickenW = HomeW;
  ChickenH = HomeH;
  lottoTextFont2= createFont("Impact", 281);
  //
  textAlign(CENTER, CENTER);
  textFont(lottoTextFont2, smallSize);
  fill(red);
  text(Chicken, ChickenX, ChickenY, ChickenW, ChickenH);
}
//
void okText8() {
  //Population
  YummyX = YummerX;
  YummyY = YummerY;
  YummyW = YummerW;
  YummyH = YummerH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(okText8, YummyX, YummyY, YummyW, YummyH);
  fill(resetWhite);
}
//
void Jail() {
  //Population
  JailX = HomeX8;
  JailY = HomeY8; 
  JailW = HomeW;
  JailH = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, NormalSize);
  fill(red);
  text(Jail, JailX, JailY, JailW, JailH);
  fill(resetWhite);}
  //
 void quitText() {
  //Population
  QuitTX = ResetX*1.5;
  QuitTY = ResetY;
  QuitTW = ResetW;
  QuitTH = ResetH;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, bigSize);
  text(quitText, QuitTX, QuitTY, QuitTW, QuitTH);
}
