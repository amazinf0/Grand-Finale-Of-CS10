//Global Variables
//background music
//play/pause
//sound effects
//stop
//fast forward
//fast rewing
//mute
//loop
//B=Button, T=Text, H=Height, W=Width
color green=#00FF00,buttonFill, White=#FFFFFF, blue= #00FFFF, backgroundColor, black=#000000, red=#FF0000, yellow=#FFFF00, brown=#643200;
Boolean StartBON=false, StartBON1=false, OkBON=false, AcceptBON=false, DeclineBON=false, OkBON1=false, OkBON2=false, OkBON3=false, OS_on=false;
float quitX, quitY, QuitButtonW, QuitButtonH;
//
void setup() {
  size(1200, 700);
  display();
  populationVariables();
  nightMode();
  background(backgroundColor);
}//End setup
//
void draw() {
  Cursors();
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
  fill(buttonFill); 
  rect(PathX1, PathY1, PathW1, PathH1);
  //
  fill(White);
  //
  BBLogo();
  tint(255, 255);
  nightMode();
  BBLogo= loadImage("../Images Used/bbad.png"); 
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
  fill(White);
  BeginT();
  //
  if ( mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(quitX, quitY, QuitButtonW, QuitButtonH);
  fill(White);
  quitText();
  //First Start Choice
  //
  if ( StartBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    //Hover-over OK BUTTON
    if ( mouseX> OkX && mouseX< OkX+OkW && mouseY> OkY && mouseY< OkY+OkH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }//End Hover-over OK BUTTON
    fill(buttonFill); 
    rect(OkX, OkY, OkW, OkH);
    Waltre();
    tint(255, 255);
    nightMode();
    Waltre= loadImage("../Images Used/waltre.jpeg");
    image(Waltre, WaltreX, WaltreY, WaltreW, WaltreH);
    Delight();
    Teach();
  }//End START Button 1
  //
  if ( OkBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    Student();
    Jesse();
    tint(255, 255);
    nightMode();
    Jesse= loadImage("../Images Used/jesse.png");
    image(Jesse, JesseX, JesseY, JesseW, JesseH);
    Jessad();
    tint(255, 255);
    nightMode();
    Jessad= loadImage("../Images Used/jesad.jpeg");
    image(Jessad, JessadX, JessadY, JessadW, JessadH);
    fill(green);
    rect(AcceptBX, AcceptBY, AcceptBW, AcceptBH);    
    fill(red);
    rect(DeclineX, DeclineY, DeclineW, DeclineH);
    Accept();
    DeclineT();
  }//End Button 4th Rect
  //
  if ( DeclineBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    dbed();
    tint(red, 200);
    nightMode();
    dbed= loadImage("../Images Used/bed.png");
    image(dbed, dbedX, dbedY, dbedW, dbedH);
    CancerT();
    }
  //
  if ( AcceptBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    Moolah();
    tint(255, 255);
    nightMode();
    Moolah= loadImage("../Images Used/huell.gif");
    image(Moolah, MoolahX, MoolahY, MoolahW, MoolahH);
    fill(White);
    Money();
  }
  //Second Start Choice
  if ( StartBON1==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    SkyBlue();
    tint(255, 255);
    nightMode();
    SkyBlue= loadImage("../Images Used/crystals.jpeg");
    image(SkyBlue, SkyBlueX, SkyBlueY, SkyBlueW, SkyBlueH);
    if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(ThinkerX, ThinkerY, ThinkerW, ThinkerH);
    fill(White);
    Business();
    Thinking();
  }//End Start Button 2
  //
  if ( OkBON1==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    Laundry();
    tint(255, 255);
    nightMode();
    Laundry= loadImage("../Images Used/chicken.png");
    image(Laundry, LaundryX, LaundryY, LaundryW, LaundryH);
    if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(YummerX, YummerY, YummerW, YummerH);
    fill(White);
    Chicken();
    Yummeries();
  }//End okButton7
  //
  if ( OkBON2==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    Prison();
    tint(255, 255);
    nightMode();
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
if ( OS_on==false ) OS_on=true;
  StartBON=false;
  StartBON1=false;
  OkBON=false;
  AcceptBON=false;
  DeclineBON=false;
  OkBON1=false;
  OkBON2=false;
  if (mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH) exit();
  if ( mouseX>=PathX && mouseX<=PathX+PathW && mouseY>=PathY && mouseY<=PathY+PathH ) StartBON=true;
  if ( mouseX>=PathX1 && mouseX<=PathX1+PathW1 && mouseY>=PathY1 && mouseY<=PathY+PathH1 ) StartBON1=true;
  if ( mouseX>=OkX && mouseX<=OkX+OkW && mouseY>=OkY && mouseY<=OkY+OkH ) OkBON=true;
  if ( mouseX>=AcceptBX && mouseX<=AcceptBX+AcceptBW && mouseY>=AcceptBY && mouseY<=AcceptBY+AcceptBH ) {    
    AcceptBON=true;
    DeclineBON=false;
  }
  if ( mouseX>=DeclineX && mouseX<=DeclineX+DeclineW && mouseY>=DeclineY && mouseY<=DeclineY+DeclineH ) {
    DeclineBON=true;
    AcceptBON=false;
  }
  if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) OkBON1=true;
  if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) OkBON2=true;
  if ( mouseX> StartX && mouseX< StartX+StartW && mouseY> StartY && mouseY< StartY+StartH ) {
    fill(backgroundColor);
    Grid();
    fill(White);
  }
}//End mousePressed
//
//End MAIN Program
