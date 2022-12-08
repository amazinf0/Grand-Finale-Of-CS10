  /*void display(){
 //Display Orientation
  String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
  //String orientation = () ? true : false; //This is a Trenary operator to populate a variable 
  String orientation = (appWidth >= appHeight) ? ls : p; 
  println(DO, orientation);
  if (orientation  == ls) {
    println("Good to Go");
  } else {
    appWidth *= 0; //is an assignment operator, works like -> appWidth = appWidth * 0
    appHeight *= 0; //is an assignment operator, works like -> appHeight = appHeight * 0
    println(instruct);
  };
  //
 }
 */
