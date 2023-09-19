int startX = 250;
int startY = 130;
int endX = 250;
int endY = 400;
void setup()
{
  size(500,450);
  strokeWeight(3);
  background(240, 245, 250);
  stroke(0);
}
void draw()
{
  smooth();
  noStroke();
  fill(255, 212, 199);
  beginShape();
  vertex(250, 150); 
  bezierVertex(250, -50, 650, 50, 250, 400); 
  vertex(250, 150); 
  bezierVertex(250, -50, -150, 50, 250, 400); 
  endShape();
  
  stroke(0);
  while (endY < 400){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20) - 10;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
   }
}
void mousePressed()
{
  startX = 250;
  startY = 130;
  endX = 250;
  endY = 400;
}
