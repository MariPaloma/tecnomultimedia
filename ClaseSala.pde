class Principal{
  //aqui se crean
Gato romeo,gataBlanca,gatoNaranja, gatitoPequenio;

Almohada almohadaDeRomeo;
Lana lana1,lana2;

PImage[]imagenes;

int px, py, tam,tam2;
float x;
int estado;


  Principal(){ 
  //aqui se declaran las variables y las clases
  almohadaDeRomeo=new Almohada();//se crea el objeto de Almohada
 romeo=new Gato();//se crea el objeto de Gato
 gataBlanca= new Gato();
 gatoNaranja= new Gato();
 gatitoPequenio= new Gato();
 lana1= new Lana();
 lana2=new Lana();
imagenes= new PImage[10];
 
 //cargar imagenes
imagenes[0]=loadImage("fondoHogar.jpg");
 imagenes [1]=loadImage("almohadaCeleste.png");
 imagenes [2]=loadImage("gatitoNaranja.png");
 imagenes [3]=loadImage("gatitoNaranja2.png");
 imagenes [4]=loadImage("gatitoNaranja3.png");
  imagenes [5]=loadImage("lana azul.png");
  imagenes [6]=loadImage("gatitoBlanco2.png");
  imagenes [7]=loadImage("gatitoDurmiendo.png");
  imagenes [8]=loadImage("gatoPequeño1.png");
  imagenes [9]=loadImage("canasta de lana.png");


   

 //variables
 px = 150;
 py = 250;
 tam = 120;
 tam2=90;
 estado=1;
  }
  
void dibujo(){
  image(imagenes[0],0,0, 605, 505);
    pushMatrix();
  lana1.movDeLana();
  popMatrix();
 gataBlanca.gatito(imagenes[6],80,210,120,90);
almohadaDeRomeo.cama(imagenes[1],120, 230, 190,170);
 gatoNaranja.gatito(imagenes[7],255,210,115,90);

 //Cambia gato 
  if(estado == 1){
 
  romeo.gatito(imagenes[2],px,py, tam, tam2);//si vale 1, es gato 
  }
  if(estado==2){
    romeo.gatito(imagenes[3],px,py,110,80);
  }
  if(estado==3){
      romeo.gatito(imagenes[4],px,py,tam,tam2);
  }
   gatitoPequenio.gatito(imagenes[8],230,320,60,60);
   lana2.lana(imagenes[9],420,260,130,130);
}
  
  void interaccion (){
    println(mouseX,mouseY);
    if(mouseX>163 && mouseX<256 && mouseY>272 && mouseY<322){estado ++;}
     if(estado == 4){estado = 1;} 
    //si mi boton es presionado, estado suma uno. cuando estado llegue al limite de pantalla, estado es igual a 1, o sea la primera pantalla
  
 
  }
  }


  
