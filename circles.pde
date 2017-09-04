void setup() {
  size(1500, 800);
}

float distToSize(float dist, float maxSize) {
  float size = 50 - dist * maxSize / sqrt(pow(width, 2) + pow(height, 2));
  if (size < 0) {
    size = 0;
  }
  return size;
}

void draw() {
  background(0);
  stroke(255);
  for (int x = 50; x < width; x += 50) {
    for (int y = 50; y < height; y += 50) {
      float size = distToSize(sqrt(pow((x - mouseX), 2) + pow((y - mouseY), 2)), 50);
      ellipse(x, y, size, size);
    }
  }
}