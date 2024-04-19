PImage textura;

void setup() {
  size(1600, 800, P3D);
  textura = loadImage("../assets/panorama.jpg");
  textura.resize(width, height);
}

/*void draw() {
 background(238);
 // image(textura,0,0,30,30);
 translate(width/2, height/2, 0);
 rotateY(map(mouseX, 5, width, -PI, PI));
 rotateX(map(mouseY, 5, height, -PI/2, PI/2));
 sphere(800);
 texture(textura);
 }*/


void draw() {
  background(0);
  translate(width/2, height/2 );
  beginShape();
  sphere(1600);
  texture(textura);
  vertex(-100, -100, 0, 0, 0);
  vertex( 100, -100, 0, 400, 0);
  vertex( 100, 100, 0, 400, 400);
  vertex(-100, 100, 0, 0, 400);
  rotateY(map(mouseX, 5, width, -PI, PI));
  rotateX(map(mouseY, 5, height, -PI/2, PI/2));
  endShape();
}
