int j=1;
  Drop[] drops = new Drop[100];

void setup ()
{

size(800,600);

for (int i = 0; i < drops.length; i++){
  drops[i] = new Drop();
}
}

//--------------------------------------------------------------------------

void draw (){
  if(j==1){
  background(230,230,250);
  
  for(int i = 0; i < drops.length; i++){
  drops[i].fall();
  drops [i].show();

  String titulo="GUERRA DE MASCOTAS";
  fill(0);
  textSize(70);
  text(titulo,210,200,400,300);
  
  
  String mascotas="Las mascotas pelean en secreto por el amor de su humano...";
  String instrucciones="¿Quieres verlos pelear?.\nPresiona 'x' para comenzar";
  
  textSize(20);
  fill(#695DF2);
  text(mascotas,210,400,400,400);
  text(instrucciones,210,470,400,400);
  fill(255);
 
} //cierre del for
inicio();
    }//cierre de IF 

  


//-------------------------------------------------------------------------
} //cierre de DRAW

class Drop {
  float x = random (width);
  float y = random (-500, -50);
  float z = random (0, 20);
  float len = map (z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 1, 20);
  
  void fall() {
    y = y + yspeed;
    float grav = map (z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;
    
    if (y > height){
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  void show (){
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(138, 43, 226);
    line (x, y, x, y+len);
  }
        
} // cierre del DROP

void inicio(){
if (keyPressed ){
  if(key=='x'||key=='X'){
clear();
background(#BEE0DD);
//medidas de PRIMER carta GATO
stroke(126);
fill (#6B2BD3);  
rect(60,30,150,200,7); //Fondo de la carta
fill(0);
textSize(15);
text("GATO", 70, 45); //TITULO
fill (#DFB4F7);
rect(70,50,130,90); //Fondo de criatura
fill (#DFB4F7);
rect(70,150,130,60); //Fondo de texto
fill(0);

String a="ATAQUE: 50";
String v="VIDA: 100";
text(a,95,160,200,100);
text(v,100,180,200,100);
//FIGURA GATO-------------------------------------------------------------
fill(0);
noStroke();
ellipse(135,95,74,65);  //CARA
noStroke ();
fill(0);
triangle(100,85,105,55,135,80);  //OREJA IZQUIERDA
fill(0);
triangle(135,80,165,55,170,85);         //OREJA DERECHA

fill(#FC91F0);
triangle (128,104,135,116,142,104);      //NARIZ

fill(255,255,255);
ellipse(120,90,27,27);                   //OJO IZQ
ellipse (150,90,27,27);                  //OJO DER

fill (#9CCB6B);
ellipse (120,90,15,20);                  //OI 2
ellipse (150,90,15,20);                  //OD 2
fill (0);

ellipse (120,90,9,15);                   //OI 3
ellipse (150,90,9,15);                  //OD 3

stroke (126);
line(100,100,124,107.5);               //bigote 1 izq
line(100,110,124,110);                 //bigote 2 izq
line (100,120,124,113.5);              //bigote 3 izq

line (146,107.5,170,100);         //bigote 1 der
line (146,110,170,110);         //bigote 2 der
line (146,113.5,170,120);         //bigote 3 der
//-------------------------------------------------------------------------
//medidas de SEGUNDA carta PERRO


fill (#CDA6F5);  
rect(320,30,150,200,7); //Fondo de la carta
fill(0);
text("PERRO", 330, 45); //TITULO
fill (#EBDEF7);
rect(330,50,130,90); //Fondo de criatura
fill (#EBDEF7);
rect(330,150,130,60); //Fondo de texto
fill(0);
String a1="ATAQUE: 60";
String v1="VIDA: 95";
text(a1,360,160,200,100);
text(v1,370,180,200,100);

//FIGURA PERRO -------------------------------------------------------------
fill(#D1A05F);
noStroke();
ellipse(395,95,74,65);                             //CARA
noStroke ();
fill(#D1A05F);
  
noStroke();
quad(350,75,365,65,380,72,365,82);      //OREJA IZQUIERDA
quad(340,90,350,75,365,82,355,100);

fill(#D1A05F);
quad(410,72,425,65,440,75,425,82);      //OREJA DERECHA
quad(435,100,425,82,440,75,450,90); 

noStroke();
fill(0);
ellipse (395,115,25,15);      //NARIZ

fill(255,255,255);
ellipse(380,90,27,27);                   //OJO IZQ
ellipse(410,90,27,27);                  //OJO DER

fill (#6B9BC4);
ellipse (380,90,20,20);                  //Ojo Izq 2
ellipse (410,90,20,20);                  //Ojo Derecho 2
fill (0);

ellipse (380,90,15,15);                   //Ojo Izq 3
ellipse (410,90,15,15);                  //Ojo Derecho 3

//-------------------------------------------------------------------------
//medidas de TERCER carta PATO

stroke(126);
fill (#F2DC31);  
rect(580,30,150,200,7); //Fondo de la carta
fill(0);
text("PATO", 590, 45); //TITULO
fill (#FAF8E8);
rect(590,50,130,90); //Fondo de criatura
fill (#FAF8E8);
rect(590,150,130,60); //Fondo de texto

fill(0);
String a2="ATAQUE: 30";
String v2="VIDA: 70";
text(a2,620,160,200,100);
text(v2,630,180,200,100);

//FIGURA PATO -------------------------------------------------------------
fill(#F5EE65);
noStroke();
ellipse(655,95,74,65);  //CARA
noStroke ();
fill(#D1A05F);

noStroke();
fill(255,255,255);
ellipse(670,85,27,27);                   //OJO der

noStroke();
fill(255,255,255);
ellipse(640,85,27,27);                   //OJO izq

fill (#6B9BC4);
ellipse (670,85,20,20);                  //Ojo 2 der

fill (#6B9BC4);
ellipse (640,85,20,20);                  //Ojo 2 izq

fill (0);
ellipse (670,85,15,15);                   //Ojo 3 der

fill (0);
ellipse (640,85,15,15);                   //Ojo 3 izq 

noStroke();
fill(#F0A255);
ellipse (655,105,50,20);      //PICO
stroke(126);
line (635,108,672,108);

//--------------------------------------------------------------------------

//medidas de CUARTA carta TORTUGA
stroke(126);
fill (#84F78D);  
rect(60,280,150,200,7); //Fondo de la carta
fill(0);
text("TORTUGA", 70, 295); //TITULO
fill (#9BDBAA);
rect(70,300,130,90); //Fondo de criatura
fill (#9BDBAA);
rect(70,400,130,60); //Fondo de texto

fill(0);
String a3="ATAQUE: 20";
String v3="VIDA: 80";
text(a3,100,410,200,100);
text(v3,110,430,200,100);

//FIGURA TORTUGA-----------------------------------------------------------
fill(#5B8355);
arc(135, 384, 128, 90, 3, 6.42,CHORD);
fill(#70986A);
arc(135, 384, 114, 74, 3, 6.42,CHORD);
fill(#5B8355);
rect(121, 369, 28, 15);

fill(#57A03F);
noStroke();
ellipse(135,350,80,55);                     //CARA

fill(#317C19);
ellipse(130,363,5,7);                      //NARIZ                
ellipse (140,363,5,7);

fill(255,255,255);
ellipse(120,345,27,27);                   //OJO IZQ
ellipse (150,345,27,27);                  //OJO DER

fill (#9CCB6B);
ellipse (120,345,20,20);                  //OJO I 2
ellipse (150,345,20,20);                  //OJO D 2

fill (0);

ellipse (120,345,15,15);                   //OI 3
ellipse (150,345,15,15);                  //OD 3


//-------------------------------------------------------------------------
//medidas de QUINTA carta PEZ

stroke(126);
fill (#93B5E0);  
rect(320,280,150,200,7); //Fondo de la carta
fill(0);
text("PEZ", 330, 295); //TITULO
fill (#CDDEF2);
rect(330,300,130,90); //Fondo de criatura
fill (#CDDEF2);
rect(330,400,130,60); //Fondo de texto

fill(0);
String a4="ATAQUE: 20";
String v4="VIDA: 65";
text(a4,360,410,200,100);
text(v4,370,430,200,100);

//FIGURA PEZ-------------------------------------------------

noStroke ();
fill(#F7B32A);
//ellipse(390,335,50,50);   //OREJA IZQUIERDA

fill(#F7B32A);
noStroke();
ellipse(380,350,90,65);                     //CARA

noStroke ();
fill(#F2BD53);                                 
//triangle(400, 345, 456, 315, 456, 375); 

noStroke ();
fill(#F7B32A);                                 
triangle(400, 345, 456, 315, 456, 375);         //COLA

fill(#C9962F);                                //NARIZ   
ellipse(355,370,15,7); 



fill(255,255,255);
ellipse(360,345,30,30);                   //OJO IZQ


fill (#9CCB6B);
ellipse(357,345,22,22);                  //OJO I 2

fill (0);
ellipse(357,345,15,15);                 //OI 3

//-------------------------------------------------------------------------
//medidas de SEXTA carta CONEJO

stroke(126);
fill (#FAB1EA);  
rect(580,280,150,200,7); //Fondo de la carta
fill(0);
text("CONEJO", 590, 295); //TITULO
fill (#F58A8A);
rect(590,300,130,90); //Fondo de criatura
fill (#F58A8A);
rect(590,400,130,60); //Fondo de texto

fill(0);
String a5="ATAQUE: 20";
String v5="VIDA: 85";
text(a5,620,410,200,100);
text(v5,630,430,200,100);

//FIGURA CONEJO-------------------------------------------------------------

noStroke ();
fill(#EAEAAF);
ellipse(635,330,20,60);   //OREJA IZQUIERDA
fill(#F7BEF6);
ellipse(635,330,15,45);
fill(#EAEAAF);
ellipse(660,330,20,60);          //OREJA DERECHA
fill(#F7BEF6);
ellipse(660,330,15,45);      

fill(#EAEAAF);
noStroke();
ellipse(648,358,69,60);                    //CARA

fill(#FC91F0);
//triangle (128,104,135,116,142,104);      //NARIZ
ellipse (650,365,15,10);

fill(255);
ellipse(635,350,27,27);                   //OJO IZQ
ellipse (663,350,27,27);                  //OJO DER

fill (#9CCB6B);
ellipse (635,350,20,20);                  //OJO I 2
ellipse (663,350,20,20);                  //OJO D 2

fill (0);

ellipse (635,350,15,15);                   //OI 3
ellipse (663,350,15,15);                  //OD 3

stroke(126);
line (640,375,655,375);                   //BOQUITA
noStroke();
fill(255);
rect(641, 376, 6, 6, 1);                    //DIENTE IZQ

noStroke();
fill(255);
rect(649, 376, 6, 6, 1);                    //DIENTE DERECHO


stroke (126);
line(100,100,124,107.5);               //bigote 1 izq
line(100,110,124,110);                 //bigote 2 izq
line (100,120,124,113.5);              //bigote 3 izq

line (146,107.5,170,100);         //bigote 1 der
line (146,110,170,110);         //bigote 2 der
line (146,113.5,170,120);         //bigote 3 der
j=j+1;

  }
}
}