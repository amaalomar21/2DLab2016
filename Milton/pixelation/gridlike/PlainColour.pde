class PlainColourCell implements ICell {
    int itsW, itsH;
    color itsColour;

    PlainColourCell(int w, int h, color c) {
        itsW = w;
        itsH = h;
        itsColour = c;
    }

    int getHeight() {
        return itsH;
    }

    int getWidth() {
        return itsW;
    }

    void drawItem(int posX, int posY) {
            fill(itsColour);
            rect(posX, posY, itsW, itsH);
    }
}
