//Global Variables
//B=Button, T=Text, H=Height, W=Width
color buttonFill, StartWhite=#FFFFFF, black=#000000, red=#FF0000, green=#00FF00, yellow=#FFFF00, brown=#643200, blue= #00FFFF, backgroundColor;
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
  if ( mouseX> PathX && mouseX< PathX+PathW && mouseY> PathY && mouseY< PathY+PathH ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(PathX, PathY, PathW, PathH);
  //Hover-over start button 2
  if ( mouseX> PathX1 && mouseX< PathX1+PathW1 && mouseY> PathY1 && mouseY< PathY1+PathH1 ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(PathX1, PathY1, PathW1, PathH1);
  //
  fill(StartWhite);
  //
  BBLogo();
  tint(255, 255);
  
  BBLogo= loadImage("../Images Used/green.png"); 
  image(BBLogo, BBLogoX, BBLogoY, BBLogoW, BBLogoH);
  //
  Option1();
  Option2();
  //
  //Hover-over start button 2
  if ( mouseX> StartX && mouseX< StartX+StartW && mouseY> StartY && mouseY< StartY+StartH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(StartX, StartY, StartW, StartH);
  fill(StartWhite);
  BeginT();
  //
  if ( mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(quitX, quitY, QuitButtonW, QuitButtonH);
  fill(StartWhite);
  quitText();
  //First Start Choice
  //
  if ( startButton1ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(StartWhite);
    //Hover-over OK BUTTON
    if ( mouseX> OkX && mouseX< OkX+OkW && mouseY> OkY && mouseY< OkY+OkH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }//End Hover-over OK BUTTON
    fill(buttonFill); //2-colors to start , remember nightMode adds choice
    rect(OkX, OkY, OkW, OkH);
    Waltre();
    tint(255, 255);
    Waltre= loadImage("../Images Used/waltre.jpeg");
    image(Waltre, WaltreX, WaltreY, WaltreW, WaltreH);
    Delight();
    Teach();
  }//End START Button 1
  //
  if ( okButton4ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(StartWhite);
    Student();
    Jesse();
    tint(255, 255);
    Jesse= loadImage("../Images Used/jesse.png");
    image(Jesse, JesseX, JesseY, JesseW, JesseH);
    Jessad();
    tint(255, 255);
    Jessad= loadImage("../Images Used/jesad.jpeg");
    image(Jessad, JessadX, JessadY, JessadW, JessadH);
    fill(green);
    rect(AcceptBX, AcceptBY, AcceptBW, AcceptBH);    
    fill(red);
    rect(DeclineX, DeclineY, DeclineW, DeclineH);
    Accept();
    DeclineT();
  }//End okButton 4th rect
  //
  if ( declineButton1ON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(StartWhite);
    dbed();
    tint(red, 200);
    dbed= loadImage("../Images Used/bed.png");
    image(dbed, dbedX, dbedY, dbedW, dbedH);
    CancerT();
    }
  //
  if ( acceptButton1ON==true ) {
    acceptButton1ON=false;
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(StartWhite);
    Moolah();
    tint(255, 255);
    Moolah= loadImage("../Images Used/huell.gif");
    image(Moolah, MoolahX, MoolahY, MoolahW, MoolahH);
    fill(StartWhite);
    Money();
  }
  //
  //Second Start Choice
  //
  if ( startButton2ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(StartWhite);
    SkyBlue();
    tint(255, 255);
    SkyBlue= loadImage("../Images Used/crystals.jpeg");
    image(SkyBlue, SkyBlueX, SkyBlueY, SkyBlueW, SkyBlueH);
    if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(ThinkerX, ThinkerY, ThinkerW, ThinkerH);
    fill(StartWhite);
    Business();
    Thinking();
  }//End START Button 2
  //
  if ( okButton7ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(StartWhite);
    Laundry();
    tint(255, 255);
    Laundry= loadImage("../Images Used/chicken.png");
    image(Laundry, LaundryX, LaundryY, LaundryW, LaundryH);
    if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(YummerX, YummerY, YummerW, YummerH);
    fill(StartWhite);
    Chicken();
    okText8();
  }//End okButton7
  //
  if ( okButton8ON==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(StartWhite);
    Prison();
    tint(255, 255);
    Prison= loadImage("../Images Used/bars.png");
    image(Prison, PrisonX, PrisonY, PrisonW, PrisonH);
    Jail();
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
  if ( mouseX>=PathX && mouseX<=PathX+PathW && mouseY>=PathY && mouseY<=PathY+PathH ) startButton1ON=true;
  if ( mouseX>=PathX1 && mouseX<=PathX1+PathW1 && mouseY>=PathY1 && mouseY<=PathY+PathH1 ) startButton2ON=true;
  if ( mouseX>=OkX && mouseX<=OkX+OkW && mouseY>=OkY && mouseY<=OkY+OkH ) okButton4ON=true;
  if ( mouseX>=AcceptBX && mouseX<=AcceptBX+AcceptBW && mouseY>=AcceptBY && mouseY<=AcceptBY+AcceptBH ) {    
    acceptButton1ON=true;
    declineButton1ON=false;
  }
  if ( mouseX>=DeclineX && mouseX<=DeclineX+DeclineW && mouseY>=DeclineY && mouseY<=DeclineY+DeclineH ) {
    declineButton1ON=true;
    acceptButton1ON=false;
  }
  if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) okButton7ON=true;
  if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) okButton8ON=true;
  if ( mouseX> StartX && mouseX< StartX+StartW && mouseY> StartY && mouseY< StartY+StartH ) {
    fill(backgroundColor);
    rect(HomeX, HomeY, HomeW, HomeH);
    rect(HomeX1, HomeY1, HomeW, HomeH);
    rect(HomeX2, HomeY2, HomeW, HomeH);
    rect(HomeX3, HomeY3, HomeW, HomeH);
    rect(HomeX5, HomeY5, HomeW, HomeH);
    rect(HomeX6, HomeY6, HomeW, HomeH);
    rect(HomeX7, HomeY7, HomeW, HomeH);
    rect(HomeX8, HomeY8, HomeW, HomeH);
    fill(StartWhite);
  }
}//End mousePressed
//
//End MAIN Program
