class Bordered implements ICell {
    ICell itsCellA;
    int itsBorder;
    color itsColour;

    Bordered(ICell cellA, int border, color colour) {
        itsCellA = cellA;
        itsBorder = border;
        itsColour = colour;
    }

    int getHeight() {
        return itsCellA.getHeight() + itsBorder * 2;
    }

    int getWidth() {
        return itsCellA.getWidth() + itsBorder * 2;
    }

    void drawItem(int posX, int posY) {
        fill(itsColour);
        noStroke();
        rect(posX,
             posY,
             getWidth(),
             getHeight());
        itsCellA.drawItem(posX + itsBorder,
                          posY + itsBorder);
    }
}
