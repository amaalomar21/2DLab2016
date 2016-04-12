void setup() {
        size(500, 500);
}

void draw(){
        loadPixels();

        for (int y = 0;  y  <  height; y++){

                for(int x = 0; x < width; x++){

                        pixels[y * width + x] = color( map(x, 0, width - 1, 0, 255),
                                                                                 map(y,0, height -1, 0, 255),
                                                                                  0);
                }
        }
        updatePixels();
}
