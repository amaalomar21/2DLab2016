void setup() {
        size(255, 255);
}

void draw(){
        loadPixels();

        float r = 0;

        for (int y = 0;  y  <  height; y++){

                for(int x = 0; x < width; x++){

                        pixels[y * width + x] = color(r,0, 0);
                }
                r = (r + 1) % 256;
        }
        updatePixels();
}
