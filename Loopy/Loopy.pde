void setup() {
  size(500,400);
  
}

void draw() {
  stroke(0);
  background(220,0,220);
  fill(255,255,0);
  ellipse(250, 200, 300, 300);
  
  fill(0,255,0);
  rect(245, 150, 10, 100);
  
  fill(0,0,255);
  ellipse(mouseX, mouseY - 100, 70, 70); 
  
  fill(20, 30, 10);
  ellipse(mouseX, mouseY - 100, 20, 20);
  
  fill(0,0,255);
  ellipse(mouseY + 100, mouseX - 20, 70, 70);
  
  fill(20, 30, 10);
  ellipse(mouseY + 100, mouseX - 20, 20, 20);
  
  fill(255,0,0);
  rect(200, 280, 100, 10);


}
