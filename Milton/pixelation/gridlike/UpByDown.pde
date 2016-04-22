class UpByDown implements ICell {
    ICell itsCellA, itsCellB;

    UpByDown(ICell cellA, ICell cellB) {
        itsCellA = cellA;
        itsCellB = cellB;
    }

    int getHeight() {
        return itsCellA.getHeight() + itsCellB.getHeight();
    }

    int getWidth() {
        return max(itsCellA.getWidth(), itsCellB.getWidth());
    }

    void drawItem(int posX, int posY) {
        itsCellA.drawItem(posX - itsCellA.getWidth() / 2 + getWidth() / 2,
                          posY);
                                // - itsCellA.getHeight() / 2
                                // + getHeight() / 2);
        itsCellB.drawItem(posX - itsCellB.getWidth() / 2 + getWidth() / 2,
                          posY + itsCellA.getHeight());
                        //   - itsCellB.getHeight() / 2
                        //   + getHeight() / 2);
    }
}
