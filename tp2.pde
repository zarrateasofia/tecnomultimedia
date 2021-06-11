int x1, y1, x2, x3;
int x4, y4;
int x5, y5;
int x6, y6;
int x7, y7;
int x8, y8;
int x9, y9;
int y10, x10;
int y11, x11;

int i1, i2, i3, i4, i5, i6, i9, i10,i11;

int velocidad=round(random(0, 1));
int pantalla=7;

PFont txt1, txt2, txt3;
PImage p1, p2, p3, p4;
color a=#F4F752, e=#3ED834, l=#E7E813;

void setup() {
  size(600, 400);

  background(0);

  p1=loadImage("fondo1.jpg");
  p2=loadImage ("p1.jpg");
  p3=loadImage ("p2.jpg");
  p4=loadImage ("objeto.png");

  txt1= createFont("1.ttf", 30);
  txt2=loadFont("TimesNewRomanPSMT-24.vlw");
  txt3= loadFont("SitkaSmall-24.vlw");

  //pantalla 1
  x1= 575;
  y1= 20;

  //pantalla 2
  x2= 530;
  x3=545;
  x6=534;

  //pantalla3
  x4= 205;
  y4= 50;
  x5=225;
  y5=120;

  // -inicio-
  i1=600;
  i3=0;
  i4=600;

  //pantalla 5
  x7=260;
  y7=120;
  //inicio
  i5=0;

  //pantalla secundarios
  x8=215;
  y8=600;

  //pantalla 6
  x9=20;
  y9=70;
  i9=0;

  x10=250;
  y10=600;
  
  //pantalla 7
  x11=250;
 y11=150;
i11=0;
}

void draw() {

  //pantalla 1
  if (pantalla==1) {

    image(p1, 0, 0, (width+1), height);


    //boton de siguiente
    fill(e, 70);
    noStroke();
    rect(x2, y1, 80, 80);

    textFont(txt2);
    fill(0);
    textSize(10);
    text("Haz click\n"+
      "    aqui", x3, 55);


    //pantalla 2
  } else  if (pantalla==2) {    

    image(p2, 0, 0, width, height);

    //instruccion
    textSize(15);
    fill(100, 80);
    rect(210, 130, 220, 30);
    textFont(txt2);

    fill(0, 180);
    textSize(15);
    text("Haz click sobre los personajes.", 215, 150);

    //pantalla 3
  } else  if (pantalla==3) {

    image(p2, 0, 0, width, height);


    textFont(txt1);
    textSize(30);
    fill(0);
    text("Personajes principales.", x4, y4);

    fill(a, 100);
    rect(0, 80, 600, 150);
    textFont(txt2);
    textSize(17);
    fill(0);
    text("    Dorothy Gale\n"+
      "          Toto\n"+
      "Hombre de hojalata\n"+
      "    León cobarde\n"+
      "   Espantapájaros", i3, y5);

    //boton de siguiente
    fill(a, 100);
    noStroke();
    rect(i4, y1, 100, 40);

    fill(0);

    textFont(txt2);
    textSize(15);
    text("Siguiente", i1, 45);


    if (i3<=x5) {
      velocidad++;
      i3=i3+velocidad;
    }
    if (i4>=x2) {
      velocidad++;
      i4=i4-velocidad;
    }
    if (i1>=x6) {
      velocidad++;
      i1=i1-velocidad;
    }
    //pantalla 4
  } else  if (pantalla==4) {    

    image(p3, 0, 0, width, height);

    fill(a, 150);
    rect(210, -10, 290, 450);

    textFont(txt2);
    textSize(17);
    fill(0);
    text("       Bruja Buena del Sur\n"+
      "                Glinda\n"+
      " La Malvada Bruja Del Oeste\n"+
      "              Theodora \n"+
      "     La Bruja Mala del Este\n"+
      "               Evanora \n"+
      "  La Bruja Buena del Norte\n"+
      "              Locasta", x7, i5);

    //boton de siguiente
    fill(a, 100);
    noStroke();
    rect(i4, y1, 100, 40);

    fill(0);

    textFont(txt2);
    textSize(15);
    text("Siguiente", i1, 45);


    if (i5<=y7) {
      velocidad++;
      i5=i5+velocidad;
    }
    if (i4>=x2) {
      velocidad++;
      i4=i4-velocidad;
    }
    if (i1>=x6) {
      velocidad++;
      i1=i1-velocidad;
    }
    //pantalla 5
  } else  if (pantalla==5) {    

    image(p3, 0, 0, width, height);
    textAlign(CENTER+30);
    fill(a, 150);
    noStroke();
    rect(210, -10, 290, 450);
    textFont(txt2);
    textSize(20);
    fill(0);
    text("Personajes secundario", x8+50, y8-30);

    textSize(17);
    text("               Los tíos de Dorothy\n"+
      "          La tía Emma y el tío Henry\n"+
      "                      Munchkins \n"+
      "                       Kalidahs \n"+
      "                      La cigüeña  \n"+
      "  La Reina de los Ratones y sus súbditos\n"+
      "  Los habitantes de la Ciudad Esmeralda \n"+
      "                     El guardián  \n"+
      "                      El soldado \n"+
      "                  La doncella verde.\n"+
      "                    Oz, el Terrible\n"+
      "                     Los Winkies\n"+
      "                  Los Monos Alados\n"+
      "               Los Árboles Belicosos\n"+
      "    Los habitantes del País de Porcelana\n"+
      "                       La lechera\n"+
      "                       La princesa \n"+
      "                  El señor bromista.\n"+
      "             Los Cabezas de Martillo\n"+
      "                   Los Quadlings", x8, y8);

    y8=y8-2;
    //boton de siguiente
    fill(a, 100);
    noStroke();
    rect(i4, y1, 100, 40);

    fill(0);

    textFont(txt2);
    textSize(15);
    text("Siguiente", i1, 45);


    if (y8<=-380) {
      pantalla=6;
    }

    if (i4>=x2) {
      velocidad++;
      i4=i4-velocidad;
    }
    if (i1>=x6) {
      velocidad++;
      i1=i1-velocidad;
    }
  } else  if (pantalla==6) {   
    background(0);
    image(p4, 0, 0, width, height);

    textFont(txt1);
    fill(a);
    textSize(40);
    text("El maravilloso\n"+
      "  mago de Oz", i9, y9);

    textAlign(CENTER-30);
    fill(250);
    textFont(txt3);
    textSize(12);
    text("Autor:\n"+
      "                            Lyman Frank Baum\n"+
      "Director:\n"+
      "                            Tia Emma\n"+
      "Productor:\n"+
      "                            Dorothy\n"+
      "Coproductor:\n"+
      "                            Theodora\n"+
      "Sonidista:\n"+
      "                            El leñador de hojalata\n"+
      "Guionista:\n"+
      "                            El mago de oz\n"+
      "Efectos especiales:\n"+ 
      "                            El mago de oz", x10, y10);
      y10=y10-2;
    
  if (i9<x9) {
    velocidad++;
    i9=i9+velocidad;
  }
  if (y10<=-120) {
      pantalla=7;
    }
  
} else  if (pantalla==7) {   
  background(0);
  image(p4, 0, 0, width, height);

  textFont(txt1);
  fill(a);
  textSize(40);
  text("El maravilloso\n"+
    "  mago de Oz", i9, y9);

  textAlign(CENTER-30);
  fill(250);
  textFont(txt2);
  textSize(15);
  text("    Realizado por Sofia Zarratea\n" 
      +"Universidad Nacional de La Plata \n"
      +"           Facultad de Artes\n"
      +"     Tecnología Multimedial 1\n"
      +"           Trabajo Práctico 2\n"
      +"               Comisión 4", x11, i11);

if (i11<=y11) {
      velocidad++;
      i11=i11+velocidad;
    }

//opciones
    fill(e,150);
    rect(0, 350, 600, 30);
    fill(255);
    textFont(txt2);
    textSize(15);
    text("Click aquí para volver al inicio    o    presiona x para volver a empezar", 100, 370);

 
}
}
 
 void keyPressed() {
  if (pantalla == 7) {
    if (key == 'x' || key == 'X') {
      pantalla = 1;
    }
  }
}

void mouseClicked() {

  if (pantalla==1) {
    if (mouseX > x2 && mouseX <600 && mouseY > y1 && mouseY < 100) {
      pantalla=2;
    }
  } else if (pantalla==2) {
    // personajes principales
    if (mouseX > 36 && mouseX < 110 && mouseY > 212 && mouseY < 340) {
      pantalla=3;
    } else if (mouseX > 153 && mouseX < 255 && mouseY > 257 && mouseY < 383) {
      pantalla=3;
    } else if (mouseX > 327 && mouseX < 408 && mouseY > 251 && mouseY < 380) {
      pantalla=3;
    } else if (mouseX > 496 && mouseX < 569 && mouseY > 245 && mouseY < 374) {
      pantalla=3;
    }
  } else if (pantalla==3) {
    if (mouseX > x2 && mouseX <600 && mouseY > y1 && mouseY < 100) {
      pantalla=4;
    }
  } else if (pantalla==4) {
    if (mouseX > x2 && mouseX <600 && mouseY > y1 && mouseY < 100) {
      pantalla=5;
    }
  } else if (pantalla==5) {
    if (mouseX > x2 && mouseX <600 && mouseY > y1 && mouseY < 100) {
      pantalla=6;
    }
  }else if (pantalla==7) {
    if (mouseX > 0 && mouseX <600 && mouseY > 350 && mouseY < 390) {
      pantalla=1;
    }
}
}
