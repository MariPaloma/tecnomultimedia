//https://youtu.be/OOOiGqWjmuE
//Mi video tiene 24 segundos de más,lo hice lo más corto posible
//Interactividad con R, Y, Mouse y ESPACIO
//variables
int cant = 1000;
int cant2=10;
int estado;
float tam;
float tamanio2;
float x, y;
color c1, c2,c3,c4,c5;
void setup() {
  size(500, 500);
  estado=0;
  tam=random(40,80);
   c1 = color(40, 35, 190); //azul
  c2 = color(26,255,246); //turquesa
 c3= color(255,41,234);//rosa
 c4=color(3,17,255);//también azul
  }
void draw() {
  inicio();
  teclas();
}
void mouseClicked(){//activar boton
  if( mouseX>160&& mouseY<450&&mouseX<330&&mouseY>400){
    estado=1;
  } 
}
void keyPressed(){ //reinicio
    if(key== ' '){
      estado=0;
}
}
