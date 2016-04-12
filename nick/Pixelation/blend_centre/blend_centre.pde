void setup() {
    size(512, 512);
}

void draw() {
    loadPixels();

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            float amt = (float) Math.cos(map(x, 0, width-1, 0, (float) (Math.PI * 2)));
            float colour = map(amt, 1, -1, 0, 255);
            pixels[y * width + x] = color(colour);
        }
    }

    updatePixels();
}
