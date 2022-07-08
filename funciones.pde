void inicio(){
  if(estado==0){ 
   //fondo
   for(fondo=0; fondo<12;fondo++){
    for( colores=0; colores<12; colores=colores+1){
      if((fondo+colores)%2==0){
        noStroke();
        fill(255);
      }else{fill(#FFD6E4);
     }
      rect(colores*50,fondo*50,50,50);
    }
 }
 
  //pantalla de inicio
  image(escenario[2],0,0,600,150);
  image(escenario[1],0,500);
  image( escenario[0],195,400,200,200);
  image(frutas[1],130,300,50,60);
  image(frutas[0],400,370,60,60);
  
  //pantalla de inicio
 /* image(toldo,0,0,600,150);
  image(suelito,0,500);
  image(canasta,195,400,200,200);
  image(frutilla,130,300,50,60);
  image(uva,400,370,60,60);*/
  
  textSize(13);  
  textFont(fuente);
  
  stroke(0);
  fill(#FF1755);
  rect(200,300,180,50);
  
  fill(0);
  text("JUGAR",220,340);
 
  textSize(40);
  text("¡Atrapa las frutillas!,",150,200);
  text("ten cuidado de tocar las uvas...",70,250);
  
  stroke(0);
  fill(#CB73CA);
  rect(200,380,180,50);
  
  fill(0);
  textSize(25);
  text("CREDITOS",235,410);
  
  }else if (estado==1){
   for(fondo=0; fondo<12;fondo++){
    for( colores=0; colores<12; colores=colores+1){
      if((fondo+colores)%2==0){
        noStroke();
        fill(255);
     }else{fill(#FFD6E4);
    }
     rect(colores*50,fondo*50,50,50);
    }    
   }
 }
 }
 //JUGANDO
 void jugando(){
   if(estado==1){
   //puntos
  fill(0);
  textSize(20);
  text("PUNTOS:"+(puntos),250,30);
  
   pushStyle();
  imageMode(CENTER);
  image(frutas[1], x1,y1);
  frutas[1].resize(50,60);
  
  imageMode(CENTER);
  image(frutas[0], x2, y1);
  frutas[0].resize(50,50);
  
  imageMode(CORNER);
  image(escenario[1],0,500);


  Xc=mouseX;
  imageMode(CENTER);
  image(escenario[0],Xc,Yc,Tc,Tc);
  popStyle();
  
  fill(0);
  textSize(20);
  text("Presiona R para reinicar",380,580);

  y1+=4;
  y2+=4;
  
  if(y1 > height){
  y1=50;
  y2=50;
  x1 = random(width);
  x2 = random(width);
  }
  
  if(dist(Xc,Yc,x1,y1)<Tc/2){
    puntos++;
    y1=50;
    x1 = random(width);
    println(frutas[1]);}
    
  else if(dist(Xc,Yc,x2,y1)<Tc/2){
    puntos--;
    y1=50;
    x2= random(width);
    println(frutas[0]);
  }
  }
  }

 
void pantallaCreditos(){
  //creditos
  if(estado==2){
  //background(#CBD7FF);
  loadPixels();
    for(int i = 0; i< pixels.length; i++){
    pixels[i]=color(random(255),80,random(50,200));
  }
  updatePixels();
  
  textSize(25);
  fill(255);
  text("TECNOLOGÍA MULTIMEDIAL 1",140,200);
  text("Trabajo práctico 3",190,250);
  text("Comisión 2 - Matías Jauregui Lorda",130,300);
  text("María Sol Paloma 91346/6",160,350);
  text("Romina Miccono 91444/7",160,400);
  
  fill(#F4CBFF);
  rect(200,500,200,70);
  fill(0);
  textSize(20);
  text("Presiona ENTER para",210,530);
  text("volver al inicio",220,560);
  
 }
}
void ganaste(){
//pantalla de ganaste
if(puntos>14){
  estado=3;
}
if(estado==3){
  background(#FFA5C0);
  image(escenario[3],100,110);
  fill(0);
  textSize(40);
  text(mensaje[0],210,120);
   fill(0);
  textSize(20);
  text("Presiona barra espaciadora",200,520);
  text("para volver al inicio",220,540);}
  
  else if(puntos<0){
    estado=4;
    if(estado==4){
      background(#F01347);
  fill(0);
  textSize(50);
  text(mensaje[1],190,300);
  fill(255);
    textSize(30);
   text("Toca R para ir al Inicio ",100,530);
}
}
}
