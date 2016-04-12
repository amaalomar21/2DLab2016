void setup() {
        size(200, 200);
}

void draw(){
        loadPixels();

        for (int y = 0;  y  <  height; y++){
                for(int x = 0; x < width; x++){
                        pixels[y * width + x] = color(random(255));
                }
        }
        updatePixels();
}
