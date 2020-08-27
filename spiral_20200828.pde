float radSec;
float count = 0 ;
float initialSize = 9411;
float newSize;
int saveCount = 0;
int oldSaveCount = 0;
void setup() {
  size(9411, 9411);
  smooth();
  strokeWeight(8);
}

void draw() {
  saveCount ++;

  count = count + 1;
  translate(width / 2, height / 2);
  radSec = 360 / 60 * count;
  pushMatrix();
  rotate(radians(radSec));
  newSize = initialSize / 2 - count;
  rect(0, 0, newSize, newSize);
  popMatrix();

  if (saveCount == oldSaveCount + 300) {
    save(saveCount + ".png");
    println("saved " + saveCount + ".png");
    oldSaveCount = saveCount;
  }

  if (newSize <= 0) {
    save("spiral-9411x9411-8.png");
    exit();
  }
}
