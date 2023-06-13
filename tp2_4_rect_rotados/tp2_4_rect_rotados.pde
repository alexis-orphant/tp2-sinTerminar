int tamX, tamY;
int cant = 2;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  tamX = width/cant;
  tamY= height/cant;
}

void draw() {
  //dibuja los cuadrados en X
  for (int j = 0; j < cant; j++) {
    //dibuja los cuadrados en Y
    for (int f = 0; f<cant; f++) {
      //rotacion de cada cuadrado interior
      for (int i = 0; i <19; i++) {
        pushMatrix();
        translate(tamX/2, tamY/2);
        rotate(radians(2)*i);
        if (i % 2 == 0) {
          fill(0);
          //rect(j*tamX, 0, tamX - (i *20), tamY - (i *20));
        } else {
          fill(255);
          //rect(j*tamX, 0, tamX - (i *20), tamY - (i *20));
        }
        //rect(0, 0, tam - (i *30), tam - (i *20));
        rect(j*tamX, f*tamY, tamX - (i *10), tamY - (i *10));
        popMatrix();
      }
    }
  }
}
