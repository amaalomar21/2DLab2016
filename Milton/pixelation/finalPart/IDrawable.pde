// Interface to be used so our objects have a common ancestor
interface IDrawableObject {
  public void draw();
  public void setPosition(float xx, float yy);
  public void setSize(float ww, float hh);
  public void setColor(int cc);
}

class DrawableObject implements IDrawableObject {

  float x, y;
  float w=10, h=10; //arbitrary values so we see something when this is drawn
  int rectFill = color(255);

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
    fill(rectFill);
    rectMode(CORNER);
    rect(x, y, w, h);
  }

  public void setColor(int cc)
  {
    rectFill = cc;
  }
}


class PicDrawableObject implements IDrawableObject {
  PImage img;
  float x, y;
  int imgTint = color(255);  // 0xFF FF FF FF

  PicDrawableObject(PImage myImage) {
    img = myImage;
    // println(img);
  }

  public void draw() {
    tint(imgTint);
    image(img, x, y);
  }

  public void setPosition(float xx, float yy) {
    x = xx;
    y = yy;
  }

  public void setSize(float ww, float hh) {
    // img.resize((int) ww, (int) hh);
    img = img.get( int((img.width / 2) - (ww / 2)), int((img.height / 2) - (hh / 2)),(int) ww, (int) hh );
  }

  public void setColor(int cc)
  {
    imgTint = cc;
  }
}
