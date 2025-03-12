// Variables to store the current drawing color
color currentColor = color(0, 0, 0); // Default is black
boolean isDrawing = false;
float brushSize = 10;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  if (isDrawing) {
    fill(currentColor);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
}

void mousePressed() {
  isDrawing = true;
}
void mouseReleased() {
  isDrawing = false;
}
void keyPressed() {
  if (key == 'C' || key == 'c') {
    background(255);
  }
  if (key == 'B' || key == 'b') {
    currentColor = color(0, 0, 0);
  }
  if (key == 'R' || key == 'r') {
    currentColor = color(255, 0, 0);
  }
  if (key == 'G' || key == 'g') {
    currentColor = color(0, 255, 0);
  }
  if (key == 'L' || key == 'l') {
    currentColor = color(0, 0, 255);
  }
  if (key == 'Z' || key == 'z') {
    brushSize += 10;
  }
  if (key == 'V' || key == 'v') {
    brushSize -= 10;
  }
}
