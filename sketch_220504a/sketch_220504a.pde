PGraphics capa, capa2, capa3;
int imageIndex=0;
PImage[]  images= new PImage[21];
void setup() {
  size(800, 600);
  for (int i=0; i < images.length ; i++) {
    images[i]= loadImage("img_" + i + ".png");
  }
  frameRate(5);
  imageMode(CENTER);
  capa3= createGraphics (width, height);
  capa3.beginDraw();
  capa3.endDraw();
  capa = createGraphics( width , height );
  capa.beginDraw();
  capa.endDraw();
  capa2 = createGraphics( width , height );
  capa2.beginDraw();
  capa2.endDraw();
}
void draw() {
  capa3.beginDraw();
  
  capa3.endDraw();
  capa.beginDraw();
  background(255);
  capa.endDraw();
  capa2.beginDraw();

  image(images[imageIndex], width/2, height/2);
  imageIndex=(imageIndex+1)% images.length;
  capa2.endDraw();
}
