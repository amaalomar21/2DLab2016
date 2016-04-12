PImage img;

void setup() {
    size(512, 512);
    img = loadImage("clouds512.jpg");    //  Must be same as sketch size.
}

void draw() {
    loadPixels();
    img.loadPixels();

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            pixels[y * width + x] = img.pixels[y * width + x];
        }
    }

    updatePixels();
}
