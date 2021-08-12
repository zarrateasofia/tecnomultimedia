int pantalla=1;
int d=60, r=10;
int y1=-10, x2= 610;

int c3= round(random(#1F0F5F, #150362));
int c4= round(random(#6B52D1, #7A65D1));

int c5= round(random(#AD3D31, #AF1302));
int c6= round(random(#AD3D31, #AF1302));


color c1, c2;



void setup() {

  size(600, 600);
}

void draw() {

  if (pantalla==1) {
    /////PANTALLA DE INICIO/////

    background(c2);

    noStroke();
    fill(c1);
    rect(150, 350, 300, 100, r);

    textSize(18);
    fill(0);
    text("Haga click para cambiar los colores de la ilusion y la R para reiniciarla", 60, 150);
    textSize(30);
    text("Empezar", 240, 410);

    c1=  #CECECE;
    c2= #898989;
  } else if (pantalla==2||pantalla==3||pantalla==4) {
    ////////////ILUSION////////////

    background(255);
    ////////LINEAS ////////
    //lineas finas
    strokeWeight(20);
    stroke(0);
    line(590, y1, x2, 10);
    line(530, y1, x2, 70);
    line(380, y1, x2, 220);
    line(230, y1, x2, 370);
    line(140, y1, x2, 470);
    line(0, 0, 600, 600);
    line(y1, 80, 520, x2);
    line(y1, 230, 370, x2);
    line(y1, 320, 280, x2);
    line(y1, 380, 220, x2);

    //lineas gruesas
    strokeWeight(45);
    line(460, y1, x2, 140);
    line(310, y1, x2, 300);
    line(60, y1, x2, 540);
    line(y1, 160, 450, x2);
    line(y1, 460, 140, x2);
    line(y1, 570, 20, x2);

    /////////CUADRADOS//////////
    noStroke();

    //cuadrados c2
    for (int x = 0; x < 600; x += d) {
      for (int y = 30; y < 600; y += d) {
        fill(c2);
        rect(x, y, 30, 30, r);
      }
    }

    //cuadrados c1
    for (int x = 0; x < 600; x += d) {
      for (int y = 0; y < 600; y += d) {

        fill(c1);
        rect(x, y, 30, 30, r);
      }
    }

    //cuadrados c2
    for (int x = 30; x < 600; x += d) {
      for (int y = 0; y < 600; y += d) {
        fill(c2);
        rect(x, y, 30, 30, r);
      }
    }

    //cuadrados c1
    for (int x = 30; x < 600; x += d) {
      for (int y = 30; y < 600; y += d) {

        fill(c1);
        rect(x, y, 30, 30, r);
      }
    }
  }
}


/////////CAMBIO DE COLORES//////////
void mouseClicked() {
  if (pantalla==1) {
    if (mouseX > 150 && mouseX < 450 && mouseY > 350 && mouseY < 450) {

      pantalla=2;
    }
  } else if (pantalla==2) {
    if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
      c1=#CECECE;
      c2=#898989;
      pantalla=3;
    }
  } else if (pantalla==3) {
    if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
      c1=c3;
      c2=c4;
      pantalla=4;
    }
  } else if (pantalla==4) {
    if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
      c1=c5;
      c2=c6;
      pantalla=2;
    }
  }
}


/////////REINICIO//////////
void keyPressed() {

  if (pantalla == 3||pantalla==4) {
    if (key == 'R' || key == 'r') {
      pantalla = 1;
    }
  }
}
