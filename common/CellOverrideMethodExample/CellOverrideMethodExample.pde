class DrawableObject {
  public void draw()
  {
    fill(255);
    stroke(0);
    rectMode(CENTER);
    rect(width/2, height/2, width/8, height/8);
  }
}

DrawableObject origObj, newObj;

void setup()
{
  size(256,256);
  
  origObj = new DrawableObject();
  
  newObj = new DrawableObject(){
    @Override 
    public void draw()
    {
      fill(255,255,0);
      stroke(0);
      rectMode(CENTER);
      rect(width/4, height/4, width/10, height/10);
    }
  };
  
}


void draw()
{
   origObj.draw();
   newObj.draw();
}