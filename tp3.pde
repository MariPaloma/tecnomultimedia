//Enlace Yt:https://youtu.be/MA2K61ETdZ8
//Trabajo realizado junto con Romina Miccono, 91444/7
String [] mensaje={"¡GANASTE!", "PERDISTE..."};
int puntos=0;

int estado;
float m;

//fondo cuadros
int fondo=0;
int colores=0;
//
float y1;
float y2;
float x1;
float x2;

//imagenes
PImage []escenario= new PImage[4];
PImage [] frutas = new PImage [2];
PFont fuente;
/*PImage suelito;
PImage canasta;
PImage frutilla;
PImage uva;
PImage toldo;
PFont fuente;
PImage frutillitaa;*/

//canasta
float Xc, Yc=500, Tc=200;

void setup(){
  
  size(600,600);
   escenario[0]= loadImage("canasta.png");// canasta
  escenario[1] = loadImage("suelito.jpg");//suelito
  escenario[2]= loadImage("toldo.png");//toldo
  escenario[3]= loadImage("frutillitaa.png");//frutillitaa

  
  //suelo y canasta
  /*canasta= loadImage("canasta.png");
  suelito = loadImage("suelito.jpg");
  toldo= loadImage("toldo.png");
  frutillitaa= loadImage("frutillitaa.png");*/
  
  //comidas
  frutas[1] = loadImage("frutilla.png");
  frutas[0]= loadImage("uva.png");
  
  estado=0;
  fuente=loadFont("BerlinSansFB-Reg-48.vlw");
}

void draw(){
  
  println(estado);
  
  //funciones
  inicio();
  pantallaCreditos();
  jugando();
  ganaste();
}
void mouseClicked(){ //activar boton
if(mouseX>160&&mouseY<345&&mouseX<350&&mouseY>310){
  estado=1;
}
 if(mouseX>200&&mouseX<380&&
 mouseY>380&&mouseY<430){
  estado=2;
 }
}

void keyPressed(){
  //reinicio
  if(estado==1&&key=='r'){
    estado=0;
    puntos=0;
  }
  if(estado==2&&key==ENTER){
    estado=0;
    puntos=0;
  }
    if(estado==3&&key==' '){
    estado=0;
    puntos=0;
  }
   if(estado==4&&key=='r'){
    estado=0;
    puntos=0;
   }
}
