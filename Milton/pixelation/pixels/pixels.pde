PImage img;

void setup() {
    size(879, 879);
    img = loadImage("me.jpg");    //  Must be same as sketch size.
}

void draw() {
    loadPixels();
    img.loadPixels();

    int yPitch = 10,
        xPitch = 10;

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            color source = img.pixels[(y - y % yPitch) * width + (x - x % xPitch)];
            pixels[((height - 1) - x) * width + ((width - 1) - y)] = source;
        }
    }


    updatePixels();
}
