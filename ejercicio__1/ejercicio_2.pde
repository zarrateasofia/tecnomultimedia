void setup() {  
  size(600, 500);
  background(#B7F5C9);
 fill(0);
textSize(13);
text("primero haz click y luego presione una letra",165,250);
 }

void draw() {
}

void mouseClicked() {
  //casita
  //chimenea
  noStroke();
  fill(#AF7405);
  rect(150, 80, 50, 100);
  fill(#5A2900);
  rect(140, 70, 70, 20);

  //techo
  strokeWeight(5);
  stroke(#8E5D03);
  triangle(300, 20, 120, 200, 480, 200);

  //frente
  noStroke();
  fill(#AF7405);
  rect(150, 197, 300, 200);

  //puerta
  fill(#C9AF57);
  triangle(275, 350, 250, 500, 450, 500);
  fill(255);
  rect(265, 320, 70, 80);
  ellipse(300, 320, 70, 60);

  //ventana
  fill(255);
  rect(265, 140, 60, 50);
  ellipse(295, 140, 60, 40);
  fill(0);
  rect(260, 180, 70, 15);

  //arboles
  //1
  fill(#A7A2A2);
  ellipse(65, 395, 80, 30);
  fill(#9D7E00);
  rect(55, 365, 20, 30);
  fill(#128E03);
  triangle(65, 260, 10, 370, 120, 370);
  triangle(65, 180, 25, 280, 105, 280);
  triangle(65, 130, 35, 200, 95, 200);

  //2
  fill(#A7A2A2);
  ellipse(535, 395, 80, 30);
  fill(#9D7E00);
  rect(525, 365, 20, 30);
  fill(#128E03);
  triangle(535, 260, 480, 370, 590, 370);
  triangle(535, 180, 495, 280, 575, 280);
  triangle(535, 130, 505, 200, 565, 200);
}

void keyPressed() {

  //cerdito celeste
  fill(#F592D2);
  ellipse(150, 400, 45, 45);
  ellipse(150, 430, 60, 60);
  //sombrero
  fill(#6CA4CE);
  triangle(150, 360, 135, 385, 165, 385);

  //cerdito rojo
  fill(#F592D2);
  ellipse(220, 380, 45, 45);
  ellipse(220, 410, 60, 60);
  //sombrero
  fill(#AA0C0C);
  ellipse(220, 360, 30, 20);
  rect(200, 360, 35, 10);

  //cerdito verde
  fill(#F592D2);
  ellipse(290, 380, 45, 45);
  ellipse(290, 410, 60, 60);
  //sombrero
  fill(#026737);
  rect(280, 350, 25, 15);
  rect(270, 360, 35, 10);

  textSize(25);
  fill(0);
  text(" ..", 135, 405);
  text(" ..", 275, 385);
  text("..", 215, 385);
}
