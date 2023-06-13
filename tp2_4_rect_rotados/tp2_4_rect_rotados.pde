int tamX, tamY;
int cant = 2;
PImage obraArte;

void setup() {
  size(800, 400);
  obraArte = loadImage("opArt.jpg");
  rectMode(CENTER);
  tamX = 400/cant;
  tamY= height/cant;
  image(obraArte, 0, 0, 400, 400);
}

void draw() {
  //dibuja los cuadrados en X
  for (int j = 0; j < cant; j++) {
    //dibuja los cuadrados en Y
    for (int f = 0; f < cant; f++) {
      //rotacion y cantidad cuadrados interiores
      for (int i = 0; i < 10; i++) {
        pushMatrix();
        translate(400 + (tamX/2), tamY/2);
        //rotate(radians(2)*i);
        if (i % 2 == 0) {
          fill(0);
          //rect(j*tamX, 0, tamX - (i *20), tamY - (i *20));
        } else {
          fill(255);
          //rect(j*tamX, 0, tamX - (i *20), tamY - (i *20));
        }
        //rect(0, 0, tam - (i *30), tam - (i *20));
        rect(j*tamX, f*tamY, tamX - (i *10), tamY - (i *10));
        fill(255,0,0);
        text(i+":"+f+":"+j, j*tamX + 20, f*tamY + 20);
        popMatrix();
      }
    }
  }
}
