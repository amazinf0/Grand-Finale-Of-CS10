//Global Variables
float HomeW, HomeH;
float HomeX, HomeY, HomeX1, HomeY1, HomeX2, HomeY2, HomeX3, HomeY3, HomeX4, HomeY4, HomeX5, HomeY5, HomeX6, HomeY6, HomeX7, HomeY7, HomeX8, HomeY8;
float PathX, PathY, PathButtonW, PathButtonH;
float PathX1, PathY1, PathButtonW1, PathButtonH1;
float OkX, OkY, OkW, OkH;
float acceptButtonX1, acceptButtonY1, acceptButtonWidth1, acceptButtonHeight1;
float DeclineX, DeclineY, DeclineW, DeclineH;
float RipX1, RipY1, RipW1, RipH1;
float ResetX, ResetY, ResetW, ResetH;
float lottoX, lottoY, lottoW, lottoH;
float lottoX1, lottoY1, lottoW1, lottoH1;
float test1, test2, test3, test4;
//
void populationVariables() {
  //rect9
  HomeW = width*1/3;
  HomeH = height*1/3;
  HomeX = width*0;
  HomeY = height*0;
  HomeX1 = HomeW;
  HomeY1 = HomeY;
  HomeX2 = HomeW*2;
  HomeY2 = HomeY;
  HomeX3 = HomeX;
  HomeY3 = HomeH;
  HomeX4 = HomeX1;
  HomeY4 = HomeH;
  HomeX5 = HomeX2;
  HomeY5 = HomeH;
  HomeX6 = HomeX;
  HomeY6 = HomeH*2;
  HomeX7 = HomeX1;
  HomeY7 = HomeY6;
  HomeX8 = HomeX2;
  HomeY8 = HomeY6;
  //
  PathX = HomeX4;
  PathY = HomeY4*0.67;
  PathButtonW = width*1/6;
  PathButtonH = height*1/9;
  PathX1 = PathX + width*1/6;
  PathY1 = PathY;
  PathButtonW1 = PathButtonW;
  PathButtonH1 = PathButtonH;
  //4th rect ok button
  OkX = HomeX3;
  OkY = HomeY3+HomeH*5/6;
  OkW = HomeW;
  OkH = HomeH*1/6;
  //1st rect accept/decline
  acceptButtonX1 = HomeX;
  acceptButtonY1 = HomeY+HomeH*5/6;
  acceptButtonWidth1 = HomeW;
  acceptButtonHeight1 = HomeH*1/6;
  DeclineX = HomeX+HomeW*1/2;
  DeclineY = HomeY+HomeH*5/6;
  DeclineW = HomeW/2;
  DeclineH = HomeH*1/6;
  //
  RipX1 = HomeX2+HomeW*1/10;
  RipY1 = HomeH*5/6;
  RipW1 = HomeW*4/5;
  RipH1 = HomeH-RipY1;
  //
  ResetX = HomeX1;
  ResetY = HomeY1;
  ResetW = HomeW/2;
  ResetH = HomeH*0.668;
  //
  lottoX = HomeX6;
  lottoY = HomeY6+HomeH*2/3;
  lottoW = HomeW*1/4;
  lottoH = HomeH*1/3;
  lottoX1 = HomeX7;
  lottoY1 = HomeY7+HomeH*2/3;
  lottoW1 = HomeW*1/4;
  lottoH1 = HomeH*1/3;
  //
  quitX = HomeX1*1.5;
  quitY = HomeY1;
  QuitButtonW = HomeW/2;
  QuitButtonH = HomeH*0.668;
}
