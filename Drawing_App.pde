// Variables to store the current drawing color
color currentColor = color(0, 0, 0); // Default is black
boolean isDrawing = false; // Track if mouse is pressed for drawing
float brushSize = 10;

void setup() {
  size(800, 600); // Set canvas size
  background(255); // White background
}

void draw() {
  // Check if the mouse is pressed and we are in drawing mode
  if (isDrawing) {
    // Draw a circle where the mouse is located
    fill(currentColor);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize); // Draw a small circle to simulate the brush
  }
}

void mousePressed() {
  // Start drawing when the mouse is pressed
  isDrawing = true;
}

void mouseReleased() {
  // Stop drawing when the mouse is released
  isDrawing = false;
}

void keyPressed() {
  // Clear the canvas when the 'C' key is pressed
  if (key == 'C' || key == 'c') {
    background(255); // Reset the background to white
  }
  
  // Change the color to black when the 'B' key is pressed
  if (key == 'B' || key == 'b') {
    currentColor = color(0, 0, 0); // Black color
  }

  // Change the color to red when the 'R' key is pressed
  if (key == 'R' || key == 'r') {
    currentColor = color(255, 0, 0); // Red color
  }

  // Change the color to green when the 'G' key is pressed
  if (key == 'G' || key == 'g') {
    currentColor = color(0, 255, 0); // Green color
  }

  // Change the color to blue when the 'L' key is pressed
  if (key == 'L' || key == 'l') {
    currentColor = color(0, 0, 255); // Blue color
  }
  if (key == 'Z' || key == 'z') {
    brushSize += 10;
  }
  if (key == 'V' || key == 'v') {
    brushSize -= 10;
  }
}
