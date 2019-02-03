ArrayList<Cell> grid = new ArrayList<Cell>();
int cols, rows, w = 20;
Cell cell;

void setup()  {
   size(400, 400);
   cols = floor(width/w);  //ten columns on a 400x400 grid (floor to deal with integers)
   rows = floor(height/w);  //ten rows on a 400x400 grid  (floor to deal with integers)
   
   for(int row = 0; row < rows; row++)  {
      for(int col = 0; col < cols; col++)  {
          cell = new Cell(col, row);
          grid.push(cell);
      }
   }
}

void draw()  {
  background(51);
  for(int cell; cell < grid.length; cell++)  {
     grid[cell].display();  
  }
}



   
