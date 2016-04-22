//import ImageGrid;
// ICell mainGrid;
// ICell noiseGrid;
ICell fourByFour;

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

    // mainGrid = new PlainColourCell(300, 200, color(255, 255, 0));
    // noiseGrid = new NoiseCell(300, 200, true);
    fourByFour = new UpByDown( new SideBySide(new NoiseCell(200, 200, false), new NoiseCell(200, 200, true)),
                               new SideBySide(new NoiseCell(200, 200, true), new NoiseCell(200, 200, false))
                             );
}

void draw() {
    clear();
    fourByFour.drawItem(  width / 2 - fourByFour.getWidth() / 2,
                        height / 2 - fourByFour.getHeight() / 2);
}
