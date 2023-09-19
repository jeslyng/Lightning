int startX = 250;
int startY = 130;
int endX = 250;
int endY = 130;
void setup()
{
  size(500,450);
  strokeWeight(3);
  background(240, 245, 250);
  stroke(0);
  smooth();
  noStroke();
  fill(255, 212, 199);
  beginShape();
  vertex(250, 150); 
  bezierVertex(250, -50, 650, 50, 250, 400); 
  vertex(250, 150); 
  bezierVertex(250, -50, -150, 50, 250, 400); 
  endShape();
}
void draw()
{
  stroke(0);
  while (endY < 400)
  {
    int randomX = 0;
    randomX = (int)(Math.random()*30);
    endX = (int)(startX - randomX);
    endY = (int)(startY + (Math.random()*50));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = (int)(startX + 2* randomX);
    endY = (int)(startY + (Math.random()*50));
    line(startX,startY,endX,endY);
    endX = (int)(startX - randomX);
    endY = (int)(startY + (Math.random()*50));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    System.out.println(randomX);
  }
}
void mousePressed()
{
  startX = 250;
  startY = 130;
  endX = 250;
  endY = 130;
}
