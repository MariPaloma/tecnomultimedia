Principal living;

void setup(){
  size(605,505);
living= new Principal();
}

void draw(){
  living.dibujo();
  
}

void mouseClicked(){
  living.interaccion();
}
