PImage img;

int BLOCKSIZE_X = 256;
int BLOCKSIZE_Y = 256;

void setup() {
    size(512, 512);
    img = loadImage("clouds512.jpg");    //  Must be same as sketch size.
}

void draw() {
    loadPixels();
    img.loadPixels();

    int xPitch = max(1, mouseX);
    int yPitch = max(1, mouseY);
    // int xPitch = 1;
    // int yPitch = 512;

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            color source = img.pixels[(y - y % yPitch) * width + (x - x % xPitch)];
            pixels[y * width + x] = source;
        }
    }

    updatePixels();
}
