void inicio(){
  if(estado==0){
     float m = map( mouseX, 0, width, 0,1 );  
  color fondo = lerpColor( c1, c2, m );
  background( fondo );
       fill(0,255,0);
rect(160,400,170,50);   
fill(255);
text("HAGA CLICK",182,435);
textSize(20);      
    }else if (estado==1){
 background(0);
    }
}
//Al tocar letras y desplazar el cursor:
     void teclas(){ 
  if (estado==1&&key== 'r'){
   tamanio2=width/cant2;
    for (int e=0; e<cant2; e++) {//columnas
       for (int v=0; v<cant2; v++) {//filas
    float distan = dist(mouseX, mouseY, e*tamanio2, v*tamanio2);
     float tono = distan*255/dist(width, height, 0, 0);
      fill(tono,0,255,tono);
       float x = random(width);
    float y = random(height);
       rect(e*tamanio2,v*tamanio2,x,y);
      
    }
  }
  }

 if (estado==1&&key== 'y'){
   float m = map( mouseX, 0, width, 0.0, 1.0 ); 
  color bg = lerpColor( c3, c4, m );
  background(bg);
     for (int a=0;a<cant; a+=20) {
    float ejeX=random(width);
    float ejeY= random(height);
      ellipse(ejeX,ejeY,tam,tam);
      fill(254,255,3);
 }
 }
 }
