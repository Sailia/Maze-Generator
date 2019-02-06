class Cell {
  int col, row;
  boolean[] walls = {true, true, true, true};
  boolean visited = false; //visited eliminates walls
  Cell(int cols, int rows) {
    col = cols;
    row = rows;
  }

  Cell checkNeighbours() {
    ArrayList<Cell> neighbours = new ArrayList<Cell>();

    //get the index     
    //from the ArrayList 
    //and set the top wall 
    //to Cell top at row 0
    Cell top = grid.get(index(col, row-1)); 
    Cell right = grid.get(index(col+1, row));
    Cell bottom = grid.get(index(col, row+1));
    Cell left = grid.get(index(col, row-1));
  }
  
  void highlight()  {
     int x = this.col*w; //find this column and row location
     int y = this.row*w; //scaled up to how big the squares are
     noStroke();
     fill(0,0,255,100);
     rect(x,y,w,w);
  }
}
