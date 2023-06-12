int cant = 10;
int tamX, tamY;

void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
  rectMode(CENTER);
  frameRate(1);
}

void draw(){
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      if((i+j)%2==0){fill(0);}else{fill(255);}
      rect(width/2, height/2, 400-(20*i), 400-(20*i));
    }
  }
}
