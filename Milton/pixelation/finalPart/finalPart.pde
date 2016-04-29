// number of cells/objects to store in our array and draw
int OBJECTS_TO_DRAW = 14;

// grid properties
int COLS = 4;   // NOTE: rows will be calculated based on number of cols

color fill = 0;

PImage images[] = new PImage[8];

// list of objects in our grid to draw
IDrawableObject[] gridObjects = new IDrawableObject[OBJECTS_TO_DRAW];

//
// SETUP ----------------------------------------------------------
//
void setup()
{
  fullScreen();

  for (int i = 0; i < 8; i++) {
    String filename = "contemp" + i + ".jpg";
    images[i] = loadImage(filename);
  }


  setupGridPositions(gridObjects, COLS, 0.025/*padding*/, 1/*grid scale*/);

  noStroke();
}






//
// DRAW ----------------------------------------------------------
//
void draw()
{
  background(0);

  // if (frameCount % 60 == 0) fill = color(random(255), random(255), random(255));
  fill = color(0x80);

  //translate(mouseX,mouseY);

  // draw our cells
  for (int cell=0; cell < gridObjects.length; cell++)
  {
    gridObjects[cell].draw();
  }


}


//----------------------------------------------------------------------
// update an array of grid cells based on the number of columns provided
//
// Use percentage to scale grid width and height (0-100% or 0..1)
//
void setupGridPositions( IDrawableObject[] gridObjects, final int columns, float paddingPercent, float scalePercent)
{
  int tableWidth = round(scalePercent*width);
  //println(tableWidth);
  int tableHeight = round(scalePercent*height);
  //println(tableHeight);
  int paddingW = round(paddingPercent*tableWidth );
  //println(paddingW);

  int paddingH = round(paddingPercent*tableHeight );

  int COL_WIDTH = (tableWidth-paddingW*(columns+1))/columns; // setup width of columns
  //println(COL_WIDTH);

  final int NUM_ROWS = gridObjects.length/columns;
  int ROW_HEIGHT = (tableHeight-paddingH*(NUM_ROWS+1))/NUM_ROWS;


  // position our cells in a 4x3 (4 col x 3 row) grid
  for (int cell=0; cell < gridObjects.length; cell++)
  {
    // figure out column & row for this cell

    // wrap around the number of elements per column
    int col = cell % COLS;

    // we want the smallest whole number that this index divides into to
    // get the row
    int row = cell/COLS;

    print("col=" + col);
    println(", row=" + row);

    // create new cell object and put in array
    IDrawableObject cellObject;
    // if (cell % 2 == 0) {
    //     cellObject = new PicDrawableObject(images[cell / 2]);
    //
    // }
    if (cell < 8) {
      cellObject = new PicDrawableObject(images[cell]);
    } else {
      cellObject = new DrawableObject();
    }

    // colour all the cells - we could also make an array containing a color pallette and randomly
    // or purposefully pick form that
    //
    colorMode(HSB);

    // 3 color - red, green, blue
    // row # -> 0,1,2
    int rowIndex = (row % 3);

    println("mod 3:" + rowIndex);

    switch(rowIndex)
    {
    case 0:
      {
        cellObject.setColor( color(0, 255, 220) );
        break;
      }

    case 1:
      {
        cellObject.setColor( color(120, 255, 255) );
        break;
      }

    case 2:
      {
        cellObject.setColor( color(240, 255, 255) );
        break;
      }
    }


    // set the cell's position based on row/col
    // cellObject.x = COL_WIDTH*col;
    // cellObject.y = ROW_HEIGHT*row;
    cellObject.setPosition((COL_WIDTH+paddingW)*col+paddingW /*x*/,
                           (ROW_HEIGHT+paddingH)*row+paddingH /*y*/);

    // cellObject.w = COL_WIDTH;
    // cellObject.h = ROW_HEIGHT;
    cellObject.setSize(COL_WIDTH, ROW_HEIGHT);
    gridObjects[cell] = cellObject; // put it in the array
    //    println("x="+gridObjects[cell].x);
  }
}
