class Lana{
  
  int M,y,tam,tam2;
  int pos;
  int orden;
  float ang,vel;

 PImage []Pelota= new PImage[4];
 float eje;

 
Lana(){
 //ang=5;
 //vel=-10000; 
 for(int p=0;p<Pelota.length;p++){
   Pelota[p]=loadImage("bola"+p+".png");

  }
   vel = 20.3;
   eje = 6.3;
   tam=40;
   tam2=40;
   y=450;
   M = 0;
}

 void lana(PImage l , int px, int py, int tam, int tam2){
    image(l, px, py, tam, tam2); 
 }
 
 void movDeLana(){
   ang= ang+vel;
   if(ang >= width -60){ vel = -5.3;}
   if(ang <= 0 - 30){ vel = 5.3;}
   M = (M+frameCount) % Pelota.length;
   pos++;
   pos= pos%width;
   image(Pelota[M],ang + tam/2,y ,tam,tam2);
 }
} 
