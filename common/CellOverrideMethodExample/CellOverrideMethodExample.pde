
//
//  Basic something to draw, by default a rectangle
//
class DrawableObject {
  
  float x,y;
  float w=10,h=10; //arbitrary values so we see something when this is drawn
  
  public void draw()
  {
    rectMode(CORNER);
    rect(x, y, w, h);
  }  
}

// number of cells/objects to store in our array and draw
int OBJECTS_TO_DRAW = 14;

// grid properties
int COLS = 4;
// NOTE: rows will be calculated based on number of cols

int COL_WIDTH; // this is set in setup
int ROW_HEIGHT; //...

// list of objects in our grid to draw
DrawableObject[] gridObjects = new DrawableObject[OBJECTS_TO_DRAW];



void setup()
{
  size(512,256);

  COL_WIDTH = width/COLS; // setup width of columns
  int NUM_ROWS = OBJECTS_TO_DRAW/COLS;
  ROW_HEIGHT = height/NUM_ROWS;

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
    DrawableObject cellObject = new DrawableObject();
    // set the cell's position based on row/col
    cellObject.x = COL_WIDTH*col;
    cellObject.y = ROW_HEIGHT*row;
    
    cellObject.w = COL_WIDTH;
    cellObject.h = ROW_HEIGHT;
    
    gridObjects[cell] = cellObject; // put it in the array
    println("x="+gridObjects[cell].x);
    
  }


  //newObj = new DrawableObject(){
  //@Override
  //public void draw()
  //{
  //  fill(255,255,0);
  //  stroke(0);
  //  rectMode(CENTER);
  //  rect(width/4, height/4, width/10, height/10);
  //}
  //};

}

color f = 0;

void draw()
{
  if (frameCount % 60 == 0) f = color(random(255), random(255), random(255));
  
  // draw our cells
  for (int cell=0; cell < gridObjects.length; cell++)
  {  
     fill(f);
     
     gridObjects[cell].draw();
  }
}