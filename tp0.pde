void setup () {
size(500,500);
background(14,29,59);//Color del Fondo
} 

void draw () {
  
    //Todas las Estrellas del fondo notcurno:
    
  noStroke();
   fill (255,255,255);
  circle(18,10,1); 
  
   fill (255,255,255);
  circle(35,40,1);

     fill (255,255,255);
  circle(90,10,1); 
  
     fill (255,255,255);
  circle(98,90,1); 
  
     fill (255,255,255);
  circle(160,55,1);
  
     fill (255,255,255);
  circle(210,35,0.5);
  
     fill (255,255,255);
  circle(39,170,1);
  
     fill (255,255,255);
  circle(23,245,1);
  
     fill (255,255,255);
  circle(93,182,1);
  
     fill (255,255,255);
  circle(79,260,1);
  
     fill (255,255,255);
  circle(60,320,1);
  
     fill (255,255,255);
  circle(170,130,1);
  
     fill (255,255,255);
  circle(188,280,1);
  
     fill (255,255,255);
  circle(180,230,1);
  
     fill (255,255,255);
  circle(218,175,1);
  
     fill (255,255,255);
  circle(242,80,1);
  
      fill (255,255,255);
  circle(300,115,1);
  
      fill (255,255,255);
  circle(225,28,1);
  
      fill (255,255,255);
  circle(340,50,1);
  
       fill (255,255,255);
  circle(435,15,1);
  
      fill (255,255,255);
  circle(420,115,1);
  
      fill (255,255,255);
  circle(412,200,1);
  
     fill (255,255,255);
  circle(294,172,1);
  
     fill (255,255,255);
  circle(470,140,1);
  
    
     fill (255,255,255);
  circle(267,230,1);
  
   
     fill (255,255,255);
  circle(375,260,1);
  
   
     fill (255,255,255);
  circle(300,306,1);
  
    fill (255,255,255);
  circle(460,250,1);
  
  

  
  //La Luna:
  

  fill(#FFF874);
circle(74,75,74);
  fill(#FFE064);
ellipse(50,95,10,6);
ellipse(60,90,10,6);
ellipse(70,100,10,6);
  
//Suelo:
 fill(#030000);
rect(0, 430, 500,70 );
  
  //la casa:
    stroke(20,40,70);
 line(471,345,499,345);
  
  noStroke();
   fill(#030000);
 rect (435,372,100,80);

   fill(#030000);
triangle(471,345,414,384,512,384);

   fill(#030000);
 rect(483,334,15,28);
  
  //Ventana de la casa:
  
  fill(#FFF534);
  rect(460,390,22,22);
  
  stroke(#030000);
    line(450,410,490,410); 
  
    line(450,400,490,400);
    
    line(471,390,471,415);
    
     
    //Árboles:
    
fill(#030000);
rect(359,310,10,120);
     
 triangle ( 360,300,324,380,402,380);
 triangle(360,270,338,330,385,330);
     
rect(280,329,5,100);
 triangle ( 280,310,260,400,302,400);

 rect(314,329,5,100);
  triangle ( 318,290,295,390,340,390);
 
 
  //Montañas:
 strokeWeight(1.6);
 stroke(#1C1E27);
fill(#333D5F);
triangle(160,250,70,430,260,430); //Montaña 2
triangle(50,130,(-30),430,150,430);//Montaña 1
 
    //Pico de Montaña 1
  noStroke();
fill(#7D86A5);
triangle(50,130,25,230,50,200);
triangle(50,130,50,220,60,200);
fill(72,88,125);
triangle(80,220,60,200,50,130);
    
    //Pico de Montaña 2
    
  noStroke();
fill(#7D86A5);
triangle(160,253,137,300,168,290);
triangle(160,253,148,280,175,298);
fill(72,88,125);
triangle(160,253,170.5,285,182,292);
 
  
}
