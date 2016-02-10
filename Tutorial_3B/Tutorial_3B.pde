
/*
This code was originally called "Sam" by a user named Sandy K. It was a program that associated 
draw lines with previously drawn lines, line tangeants, that looked sweet. 

URL here:
http://openprocessing.org/sketch/306327

Better put on a scarf, cuz this is way too cool.
*/
int p; //punkt
int anzahl;
int hoechstens;
int meistens;
int lx, ly;
int cr;
int cg;
int cb;
   
Punkt P[];
void setup() {
  size(1380, 800);
  anzahl=10000;
  P= new Punkt[anzahl];
  hoechstens=50;
  background(28,28,28);
}
void draw() {
  strokeWeight(0.2);
  cr = ((mouseX - pmouseX)+170); //i added something that changes the colour based on my mouse's changes
  cg = ((mouseY - pmouseY)+170); // same here
  cb = ((mouseX - pmouseX)+200); // same here
  stroke(cr, cg, cb);  // here is where I implimented the colour thing. mmmm
  if (mousePressed){
  if (dist(mouseX, mouseY,pmouseX,pmouseY)>hoechstens/100){
      lx=mouseX;
      ly=mouseY;
      P[p]=new Punkt(p);
      P[p].desenhaLinie();
      p=(p+1)%anzahl;
    }}}
class Punkt {
  int id;
  int px, py;
  int[] strich;
  int QLinie;
   
  Punkt(int p) {
    id=p;
    px=mouseX;
    py=mouseY;
    strich=new int[id];
   for (int i=0; i<id; i++) {
      float tdist = dist(P[i].px, P[i].py, px, py);
        if (tdist<hoechstens && tdist>5) {
        strich[QLinie]=i;
        QLinie++;
      }} }
  void desenhaLinie() {
    for (int i=0; i<QLinie; i++) {
      line(px, py, P[strich[i]].px, P[strich[i]].py);
    }}}
  
void keyPressed() { // i presume this entire thing works with any keys pressed. 
  if (key=='a') {
   background(28,28,28);
   }
   if (key=='s') { // added a new keypress dealio
   background(120,28,28);
   }
   if (key=='d') { // added another new keypress dealio
   background(128,128,0);
   }
 }