void main() {
  List grid = [
    [1,1,0,0],
    [1,1,0,0],
    [0,0,0,1],
    [0,0,0,0],
    [1,0,1,0]
  ];

  int lands = 0;

  for (int i = 0; i < grid.length; i++) {
    for (int j = 0; j < grid[i].length; j++) {
      if (grid[i][j] == 1) {
        island(grid, i, j);
        lands++;
      }
    }
  }

  print("output : $lands");// output 4
   
}


void island(List grid, int i, int j) {
  if (i < 0 || i >= grid.length || j < 0 || j >= grid[i].length || grid[i][j] == 0) {
    return;
  }

  grid[i][j] = 0;

  island(grid, i + 1, j); 
  island(grid, i - 1, j); 
  island(grid, i, j + 1); 
  island(grid, i, j - 1); 
}
