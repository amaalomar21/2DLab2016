//import ImageGrid;
ICell mainGrid;
ICell noiseGrid;

void setup() {
    size(1024, 1024);
    // mainGrid = new Grid(new ICell[] {
    //     new ImageCell("clouds.jpg"),
    //     new ImageCell("crate200.jpg"),
    //     new ImageCell("170x150-alignleft-size-thumbnail.gif"),
    //     new ImageCell("cla170.jpg"),
    //     new ImageCell("cropped-IMG_0969.jpg"),
    //     new ImageCell("dfid-170-170x150.jpg"),
    //     new ImageCell("FieldScreenSnapz014.jpg")
    // });

    mainGrid = new PlainColourCell(300, 200, color(255, 255, 0));
    noiseGrid = new NoiseCell(300, 200, true);
}

void draw() {
    clear();
    noiseGrid.drawItem(  width / 2 - mainGrid.getWidth() / 2,
                        height / 2 - mainGrid.getHeight() / 2);
}
