void setup() {
        size(255, 255);
}

void draw(){
        loadPixels();

        for (int y = 0;  y  <  height; y++){

                for(int x = 0; x < width; x++){
                        // pixelsis a array that handels the pixels being displayed
                        // its a flat array, so we do the following to the array to conceptually use it as a grid        
                        pixels[y * width + x] = color( map(x, 0, width - 1, 0, 255),
                                                                                 0,  0);
                }
        }
        updatePixels();
}
