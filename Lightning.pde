int startX = 250;
int startY = 135;
int endX = 250;
int endY = 135;
void setup()
{
  size(500,450);
  strokeWeight(5);
  background(240, 245, 250);
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
  stroke(240, 245, 250);
  while (endY <340)
  {
    int randomX = 0;
    randomX = (int)(Math.random()*30);
    endX = (int)(startX - randomX);
    endY = (int)(startY + (Math.random()*20));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = (int)(startX + 2* randomX);
    endY = (int)(startY + (Math.random()*20));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = (int)(startX - randomX);
    endY = (int)(startY + (Math.random()*20));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  line(startX,startY,250,395);
}
void mousePressed()
{
  startX = 250;
  startY = 140;
  endX = 250;
  endY = 140;
  clear();
  strokeWeight(5);
  background(240, 245, 250);
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
