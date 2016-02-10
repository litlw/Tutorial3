int varx;
void setup(){ // a function that does itself once. like Zack.
size(1000, 1000);
background(255, 100, 100);



};

void draw() { // a function that does itself over and over again. 
varx = varx + 1;


// these lines will crate random shit. 
float r = random(255);
float g = random(255); 
float b = random(255); 
// this line will measure and compare mouse position
float x = mouseX - pmouseX;
float z = random(20);

if (varx > 4) { // how to properly write an If argument. Can also be used with Else or While. 
  varx = 0;
  fill (254, 254, 254, 60);
  rect (0, 0, 1000, 1000);
  //size(600, 600);
}


noStroke ();  
fill(50, 0, 0, 200); rect (10, 10, 100, 100);
fill(0, 0, 255); rect (200, 200, 60, 60);// these are lines that follow and draw for you.
stroke(10,109,10); line(10, 500, mouseX, mouseY);
stroke(190,10,100); line(110, 500, mouseX, mouseY);
stroke(20,140,100); line(810, 500, mouseX, mouseY);
stroke(10,110,100); line(910, 500, mouseX, mouseY);
stroke(110,10,100); line(510, 500, mouseX, mouseY);
noStroke(); fill(r, g, b, 160);ellipse(mouseX + z, mouseY + z, x, x);
// the 60 in this line is opacity, girl

if (mousePressed && (mouseButton == LEFT)) {
  
   fill (mouseX, mouseY, mouseX + mouseY);
    rect (mouseX, mouseY, 20, 20);
};



};