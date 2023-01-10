//Global Variables
Boolean ProblemFound = false, PortraitC = false;
String Option3 = "", Option4 = "";
void display() {
  
  //Checks if CANVAS fits in monitor
  println("The CANVAS w/h is" , +width, "by " +height, "\t The Display w/h is" , +displayWidth, "by " +displayHeight);
  if (width > displayWidth || height > displayHeight) {ProblemFound = true; Option3 = "The CANVAS does not fit the monitor size \t";}
  
  //Checks if it's in portrait or landscape
  if (width < height) {ProblemFound = true; PortraitC = true; Option4 = "The CANVAS is in portrait mode";}
  if (PortraitC) {println("The display Orientation is portrait");} else {println("Display Orientation is landscape/square");}
  
  //Checks and says Dimensions
  if (width > height) {println("The larger size is width:", +width, ". The smaller is the height:", +height);}
  else {println("The larger size is the height:", +height, " The smaller is the width:", +width);}
  
  //If a problem is found, program is closed
  if (ProblemFound) {
  println("Error Detected. One of the following problems has arisen; \t", Option3 , Option4);
  exit ();
  } else {println("No Error Detected, Thanks for playing (:");}
}
