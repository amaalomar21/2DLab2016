// Interface to be used so our objects have a common ancestor
interface IDrawableObject {
    public void draw();
    public void setPosition(float xx, float yy);
    public void setSize(float ww, float hh);
}

// class to be used to draw squares
class DrawableObject implements IDrawableObject {

  float x, y;
  float w=10, h=10; //arbitrary values so we see something when this is drawn

  public void setPosition(float xx, float yy) {
      x = xx;
      y = yy;
  }

  public void setSize(float ww, float hh) {
      w = ww;
      h = hh;
  }

  public void draw()
  {
    rectMode(CORNER);
    rect(x, y, w, h);
  }
}

class PicDrawableObject implements IDrawableObject {
    PImage img;
    float x, y;

    PicDrawableObject(PImage myImage) {
        img = myImage;
        // println(img);
    }

    public void draw() {
        image(img, x, y);
    }

    public void setPosition(float xx, float yy) {
        x = xx;
        y = yy;
    }

    public void setSize(float ww, float hh) {
        img.resize((int) ww, (int) hh);
    }
}
