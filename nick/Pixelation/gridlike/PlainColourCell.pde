class PlainColourCell implements ICell {
    int itsW, itsH;
    
    PlainColourCell(int w, int h) {
        itsW = w;
        itsH = h;
    }
    
    int getHeight() {
        return itsH;
    }

    int getWidth() {
        return itsW;
    }
    
    void drawItem(int posX, int posY) {
    }
}