//Global Variables
color buttonFill, resetWhite=#FFFFFF, black=#000000, red=#FF0000, green=#00FF00, yellow=#FFFF00, brown=#643200, blue= #00FFFF, backgroundColor;
Boolean startButton1ON=false, startButton2ON=false, okButton4ON=false, acceptButton1ON=false, declineButton1ON=false, okButton7ON=false, okButton8ON=false, okButton9ON=false;
float quitX, quitY, QuitButtonW, QuitButtonH;
//
void setup() {
  size(1200, 700);
  display();
  populationVariables();
  rect(HomeX, HomeY, HomeW, HomeH);
  rect(HomeX1, HomeY1, HomeW, HomeH);
  rect(HomeX2, HomeY2, HomeW, HomeH);
  rect(HomeX3, HomeY3, HomeW, HomeH);
  rect(HomeX4, HomeY4, HomeW, HomeH);
  rect(HomeX5, HomeY5, HomeW, HomeH);
  rect(HomeX6, HomeY6, HomeW, HomeH);
  rect(HomeX7, HomeY7, HomeW, HomeH);
  rect(HomeX8, HomeY8, HomeW, HomeH);
  nightMode();
  background(backgroundColor);
}//End setup
//
void draw() {
  //Hover-over start button 1
  if ( mouseX> PathX && mouseX< PathX+PathButtonW && mouseY> PathY && mouseY< PathY+PathButtonH ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(PathX, PathY, PathButtonW, PathButtonH);
  //Hover-over start button 2
  if ( mouseX> PathX1 && mouseX< PathX1+PathButtonW1 && mouseY> PathY1 && mouseY< PathY1+PathButtonH1 ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(PathX1, PathY1, PathButtonW1, PathButtonH1);
  //
  fill(resetWhite);
  //
  startImage();
  tint(255, 255);
  startImage= loadImage("../Images Used/green.png"); 
  image(startImage, startImageX, startImageY, startImageWidth, startImageHeight);
  //
  Option1();
  Option2();
  //
  //Hover-over start button 2
  if ( mouseX> ResetX && mouseX< ResetX+ResetW && mouseY> ResetY && mouseY< ResetY+ResetH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(ResetX, ResetY, ResetW, ResetH);
  fill(resetWhite);
  BeginT();
  //
  if ( mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(quitX, quitY, QuitButtonW, QuitButtonH);
  fill(resetWhite);
  quitText();
  //First Start Choice
  //
  if ( startButton1ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathButtonW1, PathButtonH1 );
    fill(resetWhite);
    //Hover-over OK BUTTON
    if ( mouseX> OkX && mouseX< OkX+OkW && mouseY> OkY && mouseY< OkY+OkH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }//End Hover-over OK BUTTON
    fill(buttonFill); //2-colors to start , remember nightMode adds choice
    rect(OkX, OkY, OkW, OkH);
    oogwayImage();
    tint(255, 255);
    oogwayImage= loadImage("../Images Used/waltre.jpeg");
    image(oogwayImage, oogwayImageX, oogwayImageY, oogwayImageWidth, oogwayImageHeight);
    Delight();
    Teach();
  }//End START Button 1
  //
  if ( okButton4ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathButtonW1, PathButtonH1 );
    fill(resetWhite);
    Student();
    rabbitStandingImage();
    tint(255, 255);
    rabbitStandingImage= loadImage("../Images Used/jesse.png");
    image(rabbitStandingImage, rabbitStandingImageX, rabbitStandingImageY, rabbitStandingImageWidth, rabbitStandingImageHeight);
    raceImage();
    tint(255, 255);
    raceImage= loadImage("../Images Used/jesad.jpeg");
    image(raceImage, raceImageX, raceImageY, raceImageWidth, raceImageHeight);
    fill(green);
    rect(acceptButtonX1, acceptButtonY1, acceptButtonWidth1, acceptButtonHeight1);    
    fill(red);
    rect(DeclineX, DeclineY, DeclineW, DeclineH);
    Accept();
    DeclineT();
  }//End okButton 4th rect
  //
  if ( declineButton1ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathButtonW1, PathButtonH1 );
    fill(resetWhite);
    pressFImage();
    tint(red, 200);
    pressFImage= loadImage("../Images Used/bed.png");
    image(pressFImage, pressFImageX, pressFImageY, pressFImageWidth, pressFImageHeight);
    CancerT();
    }
  //
  if ( acceptButton1ON==true ) {
    acceptButton1ON=false;
    fill(backgroundColor);
    rect( PathX1, PathY1, PathButtonW1, PathButtonH1 );
    fill(resetWhite);
    gravestoneImage();
    tint(255, 255);
    gravestoneImage= loadImage("../Images Used/huell.gif");
    image(gravestoneImage, gravestoneImageX, gravestoneImageY, gravestoneImageWidth, gravestoneImageHeight);
    fill(resetWhite);
    declineChoiceText1();
  }
  //
  //Second Start Choice
  //
  if ( startButton2ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathButtonW, PathButtonH );
    fill(resetWhite);
    givemoneyImage();
    tint(255, 255);
    givemoneyImage= loadImage("../Images Used/crystals.jpeg");
    image(givemoneyImage, givemoneyImageX, givemoneyImageY, givemoneyImageWidth, givemoneyImageHeight);
    if ( mouseX> lottoX && mouseX< lottoX+lottoW && mouseY> lottoY && mouseY< lottoY+lottoH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(lottoX, lottoY, lottoW, lottoH);
    fill(resetWhite);
    lottoText1();
    okText7();
  }//End START Button 2
  //
  if ( okButton7ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathButtonW, PathButtonH );
    fill(resetWhite);
    lotteryImage();
    tint(255, 255);
    lotteryImage= loadImage("../Images Used/chicken.png");
    image(lotteryImage, lotteryImageX, lotteryImageY, lotteryImageWidth, lotteryImageHeight);
    if ( mouseX> lottoX1 && mouseX< lottoX1+lottoW1 && mouseY> lottoY1 && mouseY< lottoY1+lottoH1 ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(lottoX1, lottoY1, lottoW1, lottoH1);
    fill(resetWhite);
    lottoText2();
    okText8();
  }//End okButton7
  //
  if ( okButton8ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathButtonW, PathButtonH );
    fill(resetWhite);
    robberImage();
    tint(255, 255);
    robberImage= loadImage("../Images Used/bars.png");
    image(robberImage, robberImageX, robberImageY, robberImageWidth, robberImageHeight);
    lottoText3();
  }
}//End draw
//
void keyPressed() {
  if (key=='e' || key=='E') exit();
}//End keyPressed
//
void mousePressed() {
  startButton1ON=false;
  startButton2ON=false;
  okButton4ON=false;
  acceptButton1ON=false;
  declineButton1ON=false;
  okButton7ON=false;
  okButton8ON=false;
  if (mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH) exit();
  if ( mouseX>=PathX && mouseX<=PathX+PathButtonW && mouseY>=PathY && mouseY<=PathY+PathButtonH ) startButton1ON=true;
  if ( mouseX>=PathX1 && mouseX<=PathX1+PathButtonW1 && mouseY>=PathY1 && mouseY<=PathY+PathButtonH1 ) startButton2ON=true;
  if ( mouseX>=OkX && mouseX<=OkX+OkW && mouseY>=OkY && mouseY<=OkY+OkH ) okButton4ON=true;
  if ( mouseX>=acceptButtonX1 && mouseX<=acceptButtonX1+acceptButtonWidth1 && mouseY>=acceptButtonY1 && mouseY<=acceptButtonY1+acceptButtonHeight1 ) {    
    acceptButton1ON=true;
    declineButton1ON=false;
  }
  if ( mouseX>=DeclineX && mouseX<=DeclineX+DeclineW && mouseY>=DeclineY && mouseY<=DeclineY+DeclineH ) {
    declineButton1ON=true;
    acceptButton1ON=false;
  }
  if ( mouseX> lottoX && mouseX< lottoX+lottoW && mouseY> lottoY && mouseY< lottoY+lottoH ) okButton7ON=true;
  if ( mouseX> lottoX1 && mouseX< lottoX1+lottoW1 && mouseY> lottoY1 && mouseY< lottoY1+lottoH1 ) okButton8ON=true;
  if ( mouseX> ResetX && mouseX< ResetX+ResetW && mouseY> ResetY && mouseY< ResetY+ResetH ) {
    fill(backgroundColor);
    rect(HomeX, HomeY, HomeW, HomeH);
    rect(HomeX1, HomeY1, HomeW, HomeH);
    rect(HomeX2, HomeY2, HomeW, HomeH);
    rect(HomeX3, HomeY3, HomeW, HomeH);
    rect(HomeX5, HomeY5, HomeW, HomeH);
    rect(HomeX6, HomeY6, HomeW, HomeH);
    rect(HomeX7, HomeY7, HomeW, HomeH);
    rect(HomeX8, HomeY8, HomeW, HomeH);
    fill(resetWhite);
  }
}//End mousePressed
//
//End MAIN Program
