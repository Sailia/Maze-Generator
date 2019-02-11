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
    Cell left = grid.get(index(col-1, row));
    
    if (top != null && !top.visited)  {
       neighbours.add(top); 
    }
    if (right != null && !right.visited)  {
       neighbours.add(right); 
    }
    if (bottom != null && !bottom.visited)  {
        neighbours.add(bottom);
    }
    if (left != null && !left.visited)  {
       neighbours.add(left); 
    }
    //review below if statement
    if (neighbours.size() > 0 )  {
       int r = floor(random(0, neighbours.size()));
       return neighbours.get(r);
    } else {
       return null;
    }
  }
  
  void highlight()  {
     int x = this.col*w; //find this column and row location
     int y = this.row*w; //scaled up to how big the squares are
     noStroke();
     fill(0,0,255,100);
     rect(x, y, w, w); //create rectangle at that location and at that size
  }
  
  void show()  {
     int x = this.col*w;
     int y = this.row*w;
     stroke(255);
     if (this.walls[0])  {
        line(x    , y    , x + w, y); //draw the top line of the cell 
     }
     if (this.walls[1])  {
        line(x + w, y    , x + w, y + w); 
     }
     if (this.walls[2])  {
        line(x + w, y + w, x    , y + w); 
     }
     if (this.walls[3])  {
        line(x    , y + w, x    , y); 
     }
     
     if (this.visited)  {
        noStroke();
        fill(255, 0, 255, 100);
        rect(x, y, w, w);
     }
  }
}
