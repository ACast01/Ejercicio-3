float circleX;
float circleY;
float circleSpeedX;
float circleSpeedY;
float circleSize = 50;

void setup() {
  size(800, 600);
  circleX = width / 2;
  circleY = height / 2;
  circleSpeedX = 2;
  circleSpeedY = 1.5;
}

void draw() {
  background(255);
  
  // Actualiza la posición del círculo
  circleX += circleSpeedX;
  circleY += circleSpeedY;
  
  // Verifica si el círculo alcanza los bordes de la pantalla
  if (circleX > width - circleSize / 2 || circleX < circleSize / 2) {
    circleSpeedX *= -1; // Invierte la velocidad en X
  }
  if (circleY > height - circleSize / 2 || circleY < circleSize / 2) {
    circleSpeedY *= -1; // Invierte la velocidad en Y
  }
  
  // Dibuja el círculo en su nueva posición
  noFill(); // Sin relleno
  stroke(255); // Borde blanco
  strokeWeight(2); // Grosor del borde
  ellipse(circleX, circleY, circleSize, circleSize);
  
  fill(255, 0, 0); // Relleno rojo
  noStroke(); // Sin borde
  ellipse(circleX, circleY, circleSize, circleSize);
}
