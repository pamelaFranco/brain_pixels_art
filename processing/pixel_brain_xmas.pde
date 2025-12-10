PImage img;
int block = 4;

void settings() {
  img = loadImage("brain.png");
  size(img.width, img.height);
}

void setup() {
  noLoop();
}

void draw() {
  img.loadPixels();
  noStroke();
  background(0);

  for (int y = 0; y < img.height; y += block) {
    for (int x = 0; x < img.width; x += block) {

      color c = img.get(x, y);
      float b = brightness(c);

      color christmas;

      if (b < 50) {
        christmas = color(0);                         // black (edges)
      } else if (b < 120) {
        christmas = color(180, 20, 20);               // red
      } else if (b < 180) {
        christmas = color(0, 120, 40);                // green
      } else if (b < 230) {
        christmas = color(255, 220, 120);             // gold
      } else {
        christmas = color(255);                       // white
      }

      fill(christmas);
      rect(x, y, block, block);
    }
  }

  save("brain_pixel_art.png");
  println("Save image");
}
