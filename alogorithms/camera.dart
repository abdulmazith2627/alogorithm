
void main() {
List<List<String>> grid = [
  ['C', '.', 'C'],
  ['.', 'X', '.'],
  ['C', '.', 'C']
];


  bool result = iscovered(grid);
  print("Output : $result"); // Output: true
}

bool iscovered(List<List<String>> grid) {
  int rows = grid.length;
  int colum = grid[0].length;
        
     

  void markcoverage(int r, int c) {
    if (r >= 0 && r < rows && c >= 0 && c < colum && grid[r][c] == '.') {
      grid[r][c] = '0'; 
  
    }
  }
   

  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < colum; c++) {
      if (grid[r][c] == 'C') {
        markcoverage(r, c);      
        markcoverage(r - 1, c); 
        markcoverage(r + 1, c);  
        markcoverage(r, c - 1); 
        markcoverage(r, c + 1);  
      }
    }
  }


  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < colum; c++) {
      if (grid[r][c] == '.') {
        return false; 
      }
    }
  }

  return true; 
}
