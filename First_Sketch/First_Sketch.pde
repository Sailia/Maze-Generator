void setup()  {
 size(500, 500); 
 background(152,14,167);
}

void draw () {
  fill(255,59,59);
  stroke(49,14,167);
  strokeWeight(10);
  ellipse(mouseX,mouseY,100,100);
  ellipse(mouseX,mouseY,100,100);
  //ellipse(x,y,w,h);
  println(mouseX, mouseY);
}
