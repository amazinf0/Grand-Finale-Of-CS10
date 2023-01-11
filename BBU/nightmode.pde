//Global Variables
int t = hour();

void nightMode() {
  if (t >= 18 || t<=7) {
    backgroundColor = color(random(100, 255), random(255), 0);
    tint(125, 255);
    println("nightMode ON");
    tint(125, 255);
  } else {
    backgroundColor = color(random(100, 255), random(255), random(255));
    println("nightMode OFF");
  }
}
