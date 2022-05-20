 //creditos
//variables
int juegoDeGeme;
int estado;
float a;
 PFont fuentePeli;
 PFont fuenteDos;
 PFont fuenteCreditosIzq;
 PFont fuenteCreditosDer;
 PFont fuentePortada;
PImage FotoInicio;
PImage portada;
PImage fotodos;
PImage fototres;
PImage fotocuatro;
PImage fotocinco;
PImage fotoseis;
PImage fotosiete;
PImage fotoocho;
PImage fotonueve;
PImage fotodiez;
PImage fotofinal;

boolean activarCreditos=false;


void setup (){
  size (800,500);

//Pantalla 1:portada

fuentePortada= loadFont("BerlinSansFBDemi-Bold-48.vlw");
portada = loadImage("imagenPortada.jpg");

//Pantalla 2: creditos elenco principal y secundario

FotoInicio= loadImage("FQXA74WX7RDEJP3MUHTU2WR7WE.jpg");
 juegoDeGeme= 50;
 fotofinal=loadImage("imagenfinal.png");
 
 fotodos=loadImage("gemesbailando.png");
 
 fototres=loadImage("pelidisney.png");
 
 fotocuatro=loadImage("padreymadre.png");
 
 fotocinco=loadImage("padreannie.png");
 
 fotoseis=loadImage("padreymadredos.png");
 
 fotosiete= loadImage("pelicula.png");
 
 fotoocho= loadImage("madreyabuelo.png");  
 
 fotonueve=loadImage("geme.png");
 
 fotodiez=loadImage("pelidedisney.png");
 

fuenteDos= loadFont ("BookmanOldStyle-Italic-18.vlw");
fuenteCreditosIzq= loadFont("fuenteCreditosIzquierda.vlw");
fuenteCreditosDer= loadFont("FuenteDerecha.vlw");


estado=0;
juegoDeGeme-=0.4;

}
 

void draw (){
  if(estado==0){
background(255);

println(frameCount);

image(portada,250,0, 300,380);
textFont(fuentePortada, 24);
textAlign(CENTER,CENTER);
fill(255,0,0);
rectMode(CENTER);
rect(400,450,100,50);
fill(255);
  text("Start",400,450);
  textAlign(NORMAL,NORMAL);
      
    
    }else if (estado==1){

 background(0);
   

  //parte 1
     if( millis()>12000){
      image(fotoseis, 10,1050-juegoDeGeme,350,280);
     }
     if( millis()>25000){
       image(fotodiez , 5, 1400-juegoDeGeme,350,280);
     }
  
  image(FotoInicio,100,280-juegoDeGeme, 400,300);

image(fototres,50,700-juegoDeGeme, 300,200);
 
 image(fotofinal, 250,2060-juegoDeGeme,320,250);
    
 image(fotoocho,450,2620-juegoDeGeme, 320,250);
 

 image(fotonueve,50, 4190-juegoDeGeme,250,180);
  image(fotodos,300,4190-juegoDeGeme, 250,180);
 image(fotocinco,550,4190-juegoDeGeme, 220, 180);

   //para que desaparezca la imagen del padre
  
  //parte 2
fill(255);
//The cast
  textFont(fuenteDos, 16);
  strokeWeight(5);
  text("the cast",530,690-juegoDeGeme);
  //And featuring
   text("and featuring", 490, 940-juegoDeGeme); 
   //The production crew
 text("the production crew",340, 2400-juegoDeGeme);
 //songs
 text("songs", 360,4000-juegoDeGeme);
 
 
  //creditos lado izq
  textFont(fuenteCreditosIzq,12);
  text("Hallie Parker and Annie James", 375,720-juegoDeGeme);
   text("Nick Parker", 494,740-juegoDeGeme);
    text("Elizabeth James", 470,760-juegoDeGeme);
    text("Meredith Blake", 472,780-juegoDeGeme);
     text("Chessy", 524,800-juegoDeGeme);
     text("Martin", 524,820-juegoDeGeme);
    text("Marva Kulp. Sr.", 472,840-juegoDeGeme);
    text("Marva Kulp. Jr.", 472,860-juegoDeGeme);
    text("Grandfather", 486,880-juegoDeGeme);
    text("Hannie/Annie Acting Double", 384,900-juegoDeGeme);
    
   //featuring lado izq
    text("Lindsay",518, 970-juegoDeGeme);
    text("Zoe",535,990-juegoDeGeme);
    text("Nicole",521, 1010-juegoDeGeme);
    text("Jackie",528, 1030-juegoDeGeme);
    text("Lost Boy at Camp",454,1050-juegoDeGeme);
    text("Navajo Bunk Girls",448,1070-juegoDeGeme);
    text("Cell Phone Girls",455,1170-juegoDeGeme);
    text("Girls at Poker Game",440,1230-juegoDeGeme);
    text("Bugler",523,1290-juegoDeGeme);
    text("Camp Counselors",450,1310-juegoDeGeme);
    text("Fencing Girls", 475,1370-juegoDeGeme);
    text("Gareth. The James' Chauffeur",370,1410-juegoDeGeme);
    text("Photographer",466,1430-juegoDeGeme);
    text("Bridal Gown Model",435,1450-juegoDeGeme);
    text("Richard. Meredith's Assistant",374, 1470-juegoDeGeme);
    text("Les Blake",500,1490-juegoDeGeme);
    text("Bellhop with Flowers",420,1510-juegoDeGeme);
    text("Hotel Bartender",450,1530-juegoDeGeme);
    text("Lady at Pool",490,1550-juegoDeGeme);
    text("Towel Girl",495,1570-juegoDeGeme);
    text("Desk Clerk",493,1590-juegoDeGeme);
    text("Ship Photographer",448,1610-juegoDeGeme);
    text("Dennis Quaid's Dance Double",380,1625-juegoDeGeme);
    text("Natasha Richardson Dance Double",335,1650-juegoDeGeme); 
    text("QE2 Dancers",482,1670-juegoDeGeme);
    text("Living Statue",480, 1710-juegoDeGeme);
   text("Tourist",513,1730-juegoDeGeme);
   text("Additional Hallie/Annie Doubles",345,1750-juegoDeGeme);
       text("Fencing Doubles",455,1790-juegoDeGeme);
      text("Stand-Ins",500, 1870-juegoDeGeme);
      text("Sammy, the Dog",468, 1950-juegoDeGeme);
      
       //production crew lado izq
        
    text("Second unit Director(U.S)",100,2440-juegoDeGeme);
       text("Second unit Director(U.K)",100,2460-juegoDeGeme);
       
          text("Art Director",190,2500-juegoDeGeme);
             text("Set Decorator",168,2530-juegoDeGeme);
             
                text("Camera Operator",155,2560-juegoDeGeme);
                   text("First Assistant Camera",120,2580-juegoDeGeme);
       text(" 'B' Camera Operator",140,2600-juegoDeGeme);
          text("Second Assistant Camera",105,2620-juegoDeGeme);
         text("Film Loader",195,2650-juegoDeGeme);
                text("Steadicam® Operator",125,2670-juegoDeGeme);
                
                //song lado izq
  text("LOVE",200, 4030-juegoDeGeme);
  text("Written By",150,4050-juegoDeGeme);
  text("Bert Kaempeert and Mile Gabler",150,4070-juegoDeGeme);
  text("Performed by Nat King Cole",150,4090-juegoDeGeme);
  text("Courtesy of Capitol Records",150,4110-juegoDeGeme);
  text("Under license from",150,4130-juegoDeGeme);
  text("EMI Music Special Markets",150,4150-juegoDeGeme);
  //song lado der
  text("LET'S GET TOGETHER",460, 4035-juegoDeGeme);
  text("Written By Richard Sherman",500,4070-juegoDeGeme);
  text("and Robert Sherman", 500, 4090-juegoDeGeme);
  text("EVERYONE MERENGE",460,4110-juegoDeGeme);
  text("Writen and Performed by",500,4130-juegoDeGeme);
  text("Joe Boses Johnson",500, 4150-juegoDeGeme);
 

   //creditos lado der.
  textFont(fuenteCreditosDer,12);
  text("Lindsay Lohan", 578,720-juegoDeGeme);
  text("Dennis Quaid", 578,740-juegoDeGeme);
   text("Natasha Eichardson", 578,760-juegoDeGeme);
   text("Elaine Hendrix", 578,780-juegoDeGeme);
   text("Lisa Ann Walter", 578,800-juegoDeGeme);
    text("Simon Kunz", 578,820-juegoDeGeme);
    text("Polly Holliday", 578,840-juegoDeGeme);
    text("Maggie Wheeler", 578,860-juegoDeGeme);
    text("Ronnie Stevens", 578,880-juegoDeGeme);
    text("Erin Mackey", 578,900-juegoDeGeme);
    
     //featuring lado der.
    text("Hallie Meyers-Shyer",574,970-juegoDeGeme);
    text("Maggie Emma Thomas", 574, 990-juegoDeGeme);
    text("Couriney Woods", 574, 1010-juegoDeGeme);
    text("Katerina Graham",574,1030-juegoDeGeme);
    text("Michael Lohan", 574,1050-juegoDeGeme);
        text("Rachel Sullivan", 574,1070-juegoDeGeme);
        text("Kate Deshan", 574,1090-juegoDeGeme);
        text("Brighton Hertford", 574,1110-juegoDeGeme);
        text("Jennifer Lin ", 574,1130-juegoDeGeme);
        text("Mia Tramz", 574,1150-juegoDeGeme);
        text("Christina Toral", 574,1170-juegoDeGeme);
        text("Dana Ponder", 574,1190-juegoDeGeme);
        text("Brianne Mercier", 574,1210-juegoDeGeme);
        text("Danielle Sherman", 574,1230-juegoDeGeme);
        text("Natasha Melnick", 574,1250-juegoDeGeme);
        text("Amanda Hampton",574, 1270-juegoDeGeme);
         text("Lisa Iverson",574, 1290-juegoDeGeme);
     text("Lisa Cloud",574, 1310-juegoDeGeme);
 text("Kellie Foster",574, 1330-juegoDeGeme);
 text("Heidi Boren",574, 1350-juegoDeGeme);
  text("Marissa Leigh",574, 1370-juegoDeGeme);
  text("Heather Wayrock",574, 1390-juegoDeGeme);
  text("John Atterbury",574, 1410-juegoDeGeme);
  text("Hamish McCOLL",574, 1430-juegoDeGeme);
  text("Vendela K.Thommessen",574, 1450-juegoDeGeme);
  text("Alexander Cole",574, 1470-juegoDeGeme);
  text("J.Patrick MrCORMACK",574, 1490-juegoDeGeme);
  text("William Akey",574, 1510-juegoDeGeme);
  text("David Doty",574, 1530-juegoDeGeme);
  text("Roshanna Baron",574, 1550-juegoDeGeme);
  text(" Annie Meyers-Shyer",574, 1570-juegoDeGeme);
  text("Brian Fenwick",574, 1590-juegoDeGeme);
  text("Jonneine Hellerstein",574, 1610-juegoDeGeme);
  text("Regan Patno",574, 1630-juegoDeGeme);
  text("Melanie Gage",574, 1650-juegoDeGeme);
  text("Troy Christian",574, 1670-juegoDeGeme);
   text("Denise Holland",574, 1690-juegoDeGeme);
     text("Terry Kerr",574, 1710-juegoDeGeme);
     text("Bruce Block",574, 1730-juegoDeGeme);
     text("Lindsay Challoner",574, 1750-juegoDeGeme);
     text("Stephanie Fischer",574, 1770-juegoDeGeme);
     text("Tara Chang",574, 1790-juegoDeGeme);
     text("Ronnie Wong",574, 1810-juegoDeGeme);
     text("Amanda Holm",574, 1830-juegoDeGeme);
     text("Lauren Walker",574, 1850-juegoDeGeme);
     text("Bob Schoofs",574, 1870-juegoDeGeme);
     text("Mary Bowers",574, 1890-juegoDeGeme);
      text("Clair Chrysler",574, 1910-juegoDeGeme);
       text("Harriet Preston",574, 1930-juegoDeGeme);
        text("Bob",574, 1950-juegoDeGeme);
          //production crew lado der.
       
    
     text("Charles Shyer",280,2440-juegoDeGeme);
     text("Bruce A. Block",280,2460-juegoDeGeme);
     text("Alex Tavoularis",280,2500-juegoDeGeme);
     text("gary Fettis",280,2530-juegoDeGeme);
     text("Billy O'drobinak, S.O.C",280, 2560-juegoDeGeme);
     text("Gregory Irwin",280,2580-juegoDeGeme);
     text(" Todd Schlopy",280,2600-juegoDeGeme);
     text("Joy R. Stone",280,2620-juegoDeGeme);
     text("Jerry Patton",280,2650-juegoDeGeme);
     text("Mark Emery Moore",280, 2670-juegoDeGeme);
     
     //music
     text("Music Supervisor ALLAN MASON", 300,2980-juegoDeGeme);
     text("Music Consultant BONNIE GREENBERG", 300, 3400-juegoDeGeme);
     

 juegoDeGeme++;


 }
}


void keyPressed(){
if(key==' '){
  estado=1;
}
}
 
 
