ArrayList<Cell> grid = new ArrayList<Cell>();
int cols, rows, w = 20;
Cell cell;

Cell current;

ArrayList<Cell> stack = new ArrayList<Cell>();

void setup()  {
   size(600, 600);
   cols = floor(width/w);  //ten columns on a 600x600 grid (floor to deal with integers)
   rows = floor(height/w);  //ten rows on a 600x600 grid  (floor to deal with integers)
   
   for(int row = 0; row < rows; row++)  {
      for(int col = 0; col < cols; col++)  {
          cell = new Cell(col, row);
          grid.add(cell);
      }
   }
   
   current = grid.get(0);
}

void draw()  {
  background(51);
  for(int i = 0; i < grid.size(); i++)  {
     grid.get(i).show();  
  }
}

int index(int col, int row)  {
   if (col < 0 || row < 0 || col > cols-1 || row > rows-1)  {
      return 0;
   }  
   return col + row * cols;
}




   
