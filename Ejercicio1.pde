void setup() {
  size(600, 600);
  noLoop(); 
}

void draw() {
  background(255);
  int numShapes = 50; 
  
  for (int i = 0; i < numShapes; i++) {
    float x = random(width); 
    float y = random(height); 
    float size = random(5, 180); 
    
    fill(random(255), random(255), random(255), 150);
    stroke(random(255), random(255), random(255), 200);
    
    
    float choice = random(1);
    if (choice < 0.44) {
      ellipse(x, y, size, size);
    } else if (choice < 0.66) {
      rect(x, y, size, size);
    } else {
      float x2 = x + random(-size, size);
      float y2 = y + random(-size, size);
      float x3 = x + random(-size, size);
      float y3 = y + random(-size, size);
      triangle(x, y, x2, y2, x3, y3);
    }
  }
}
