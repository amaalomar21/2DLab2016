//import ImageGrid;
ICell mainGrid;

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

    mainGrid = new ImageCell("clouds.jpg");
}

void draw() {
    clear();
    mainGrid.drawItem(0, 0);
}
