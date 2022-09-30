//María Sol Paloma Andrini, legajo 91346/6
//enlace YT:https://youtu.be/0-Lvr4hW5LA
//Una especie de fondo interactivo:


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
