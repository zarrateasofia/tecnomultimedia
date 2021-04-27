void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  
  noFill();
  triangle(600, 550, 200, 550, 400, 150); 
  triangle(600, 280, 200, 280, 400, 650);
  
  noStroke();
  //V+R
  fill(#E103FF);
  triangle(170, 75, 400, 150, 170, 265);
  //A+V
  fill(#9D03FF);
  triangle(20, 400, 170, 265, 170, 465);
  //V+A
  fill(0, 250, 200);
  triangle(170, 470, 400, 700, 170, 750);
  //V+A
  fill(#88FF03);
  triangle(400, 700, 625, 470, 630, 750);
  //N+A
  fill(#FFA703);
  triangle(625, 470, 780, 400, 630, 265);

  //R+N
  fill(#FF6403);
  triangle(630, 265, 630, 75, 400, 150);

  //Colores prncipales
  //rojo
  fill(#FF0303);
  triangle(400, 20, 500, 200, 300, 200);
  //naranja
  fill(#FF8503);
  triangle(500, 200, 750, 200, 625, 395);
  //amarillo
  fill(#FFF708);
  triangle(625, 395, 750, 600, 500, 600);
  //verde
  fill(#00CB0B);
  triangle(400, 780, 500, 600, 300, 600);
  //azul
  fill(#0347FF);
  triangle(50, 600, 300, 600, 170, 395);
  //violeta
  fill(#9503FF);
  triangle(50, 200, 300, 200, 170, 395);

  //textos
  fill(10);
  textSize(20);
  text("Violeta", 140, 280);
  text("Rojo", 370, 150);
  text("Naranja", 590, 280);
  text("Amarillo", 580, 535);
  text("Azul", 150, 535);
  text("Verde", 370, 680);
}
