//Global Variables
//background music
//play/pause
//sound effects
//stop
//fast forward
//fast rewind
//mute
//loop
//B=Button, T=Text, H=Height, W=Width
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song1, song2, HectorBoom;
color green=#00FF00,buttonFill, White=#FFFFFF, blue= #00FFFF, backgroundColor, black=#000000, red=#FF0000, yellow=#FFFF00, brown=#643200;
Boolean StartBON=false, StartBON1=false, OkBON=false, AcceptBON=false, DeclineBON=false, OkBON1=false, OkBON2=false, OkBON3=false, OS_on=false;
Boolean PPON=false, StopON=false, FastFON=false, FastRON=false, MuteON=false, LoopON=false,song=true, App=false, musical=false, musical1=false;
float quitX, quitY, QuitButtonW, QuitButtonH;
//
void setup() {
  size(1200, 700);
  minim = new Minim(this);
  song1 = minim.loadFile("../Sounds/Smokey.mp3");
  song2 = minim.loadFile("../Sounds/Hermanos.mp3");
  HectorBoom = minim.loadFile("../Sounds/bell.mp3");
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
    Prison= loadImage("../Images Used/hector.png");
    image(Prison, PrisonX, PrisonY, PrisonW, PrisonH);
    Jail();
    HectorBoom.play();
  }
  //
  //Music Player
  //
  //
  if ( mouseX> PPX && mouseX< PPX+PPW && mouseY> PPY && mouseY< PPY+PPH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(PPX, PPY, PPW, PPH);
  PlayPause();
  //
  if ( PPON==true ) {
     if (song) {
      if (song1.isPlaying()) {
        song1.pause();
        PPON=false;
      } else if (song1.position()>= song1.length()*4/5) {
        song1.rewind();
        song1.play();
        PPON=false;
      } else {
        song1.play();
        PPON=false;
      }
    } else {
      if (song2.isPlaying()) {
        song2.pause();
        PPON=false;
      } else if (song2.position()>= song2.length()*4/5) {
        song2.rewind();
        song2.play();
        PPON=false;
      } else {
        song2.play();
        PPON=false;
      }
    }
  }
  //
  if ( mouseX> StopX && mouseX< StopX+StopW && mouseY> StopY && mouseY< StopY+StopH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(StopX, StopY, StopW, StopH);
  Ending();
  //
  if ( StopON==true ) {
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
      song1.play();
      StopON=false;
    } else if (song2.isPlaying()==false) {
      song1.rewind();
      song1.play();
      StopON=false;
    }
    if (song2.isPlaying()) {
      song2.pause();
      song2.rewind();
      song2.play();
      StopON=false;
    } else if (song1.isPlaying()==false) {
      song2.rewind();
      song2.play();
      StopON=false;
    }
  }
  
  if ( mouseX> FastFX && mouseX< FastFX+FastFW && mouseY> FastFY && mouseY< FastFY+FastFH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(FastFX, FastFY, FastFW, FastFH);
  FastForward();
  //
  if ( FastFON==true ) {
    if (song1.isPlaying()) {
      song1.skip(5000);
      FastFON=false;
    }
    if (song2.isPlaying()) {
      song2.skip(5000);
      FastFON=false;
    }
  }
  //
  if ( mouseX> FastRX && mouseX< FastRX+FastRW && mouseY> FastRY && mouseY< FastRY+FastRH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(FastRX, FastRY, FastRW, FastRH);
  FastRewind();
  //
  if ( FastRON==true ) {
    if (song1.isPlaying()) {
      song1.skip(-5000);
      FastRON=false;
    }
    if (song2.isPlaying()) {
      song2.skip(-5000);
      FastRON=false;
      
    }
  }
  //
  if ( mouseX> MuteX && mouseX< MuteX+MuteW && mouseY> MuteY && mouseY< MuteY+MuteH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(MuteX, MuteY, MuteW, MuteH);
  Shut();
  //
  if ( MuteON==true ) {
    if (song1.isPlaying()) {
      if (song1.isMuted()) {
        song1.unmute();
        MuteON=false;
      } else {
        song1.mute();
        MuteON=false;
      }
    }
    if (song2.isPlaying()) {
      if (song2.isMuted()) {
        song2.unmute();
        MuteON=false;
      } else {
        song2.mute();
        MuteON=false;
      }
    }
  }
  //
  if ( mouseX> LoopX && mouseX< LoopX+LoopW && mouseY> LoopY && mouseY< LoopY+LoopH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(LoopX, LoopY, LoopW, LoopH);
  Loop();
  //
   if ( LoopON==true ) {
  if (song1.isPlaying()) {
      song1.loop(-1);
      LoopON=false;
    }
    if (song2.isPlaying()) {
      song2.loop(-1);
    LoopON=false;
   }
   }
   //
   if ( mouseX> musicX && mouseX< musicX+musicW && mouseY> musicY && mouseY< musicY+musicH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(musicX, musicY, musicW, musicH);
  songy1();
  //
  if (musical==true){
    
    song2.pause();
    song2.rewind();
    song1.unmute();
    song1.play();
    musical=false;
  }
  //
  if ( mouseX> musicX1 && mouseX< musicX1+musicW1 && mouseY> musicY1 && mouseY< musicY1+musicH1 ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(musicX1, musicY1, musicW1, musicH1);
  songy2();
  //
  if (musical1==true){
    
    song1.pause();
    song1.rewind();
    song2.unmute();
    song2.play();
    musical1=false;
  }
  //
}//End draw
//
void keyPressed() {
  if (OS_on && key==' ') {
    App=true;
    OS_on=false;
  }
  if (key=='e' || key=='E') exit();
}//End keyPressed
//
void mousePressed() {
  if (OS_on==false && App==false) OS_on=true;
  StartBON=false;
  StartBON1=false;
  OkBON=false;
  AcceptBON=false;
  DeclineBON=false;
  OkBON1=false;
  OkBON2=false;
  //
  PPON=false;
  StopON=false;
  FastFON=false;
  FastRON=false;
  MuteON=false;
  LoopON=false;
     HectorBoom.pause();
     HectorBoom.rewind();
     Functions();
}//End mousePressed
//
//End MAIN Program
