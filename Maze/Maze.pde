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
  
  current.visited = true;
  current.highlight();
  
  // Step 1
  Cell next = current.checkNeighbours();
  if (next != null)  {
     next.visited = true;
     
     // Step 2
     stack.add(current);
     
     // Step 3
     removeWalls(current, next);
  }
}

void removeWalls(Cell a, Cell b)  {
   int x = a.col - b.col;
   if (x == 1)  {
      a.walls[3] = false;
      b.walls[1] = false;
   } else if (x == -1)  {
      a.walls[1] = false;
      b.walls[3] = false;
   }
}

int index(int col, int row)  {
   if (col < 0 || row < 0 || col > cols-1 || row > rows-1)  {
      return 0;
   }  
   return col + row * cols;
}




   
