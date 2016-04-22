
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


// list of objects in our grid to draw
DrawableObject[] gridObjects = new DrawableObject[OBJECTS_TO_DRAW];



void setup()
{
  size(512,256);

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


void draw()
{
   //origObj.draw();
}