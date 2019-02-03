class Cell  {
   int col, row, x, y, w = 40;
   Cell(int col, int row)  {
       this.col = col;
       this.row = row;
       
       x = this.col*w;
       y  = this.row*w;
       stroke(255);
       noFill();
       rect(x,y,w,w);
       
   }




}
