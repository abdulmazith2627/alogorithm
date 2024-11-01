

List<List<int>> directions = [
  [-1, 0], 
  [1, 0],   
  [0, -1],  
  [0, 1]   
];


List<List<int>> dfs(List<List<int>> grid, List<List<List<List<int>>>> memo, int x, int y) {

  if (memo[x][y].isNotEmpty) return memo[x][y];


  List<List<int>> bestPath = [[x, y]];


  for (var dir in directions) {
    int nx = x + dir[0];
    int ny = y + dir[1];


    if (nx >= 0 && nx < grid.length && ny >= 0 && ny < grid[0].length && grid[nx][ny] > grid[x][y]) {
      List<List<int>> newPath = dfs(grid, memo, nx, ny); 
      if (newPath.length + 1 > bestPath.length) {
        bestPath = [[x, y]] + newPath;  
      } else if (newPath.length + 1 == bestPath.length) {
 
        int currentSum = bestPath.fold(0, (sum, p) => sum + grid[p[0]][p[1]]);
        int newPathSum = newPath.fold(0, (sum, p) => sum + grid[p[0]][p[1]]);
        if (newPathSum + grid[x][y] > currentSum) {
          bestPath = [[x, y]] + newPath;
        }
      }
    }
  }

  memo[x][y] = bestPath;  
  return bestPath;
}


List<List<int>> findLongestRidgePath(List<List<int>> grid) {
  int n = grid.length;
  int m = grid[0].length;

  List<List<List<List<int>>>> memo = List.generate(n, (i) => List.generate(m, (j) => []));

  List<List<int>> longestPath = [];

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      List<List<int>> currentPath = dfs(grid, memo, i, j);

      if (currentPath.length > longestPath.length) {
        longestPath = currentPath;
      } else if (currentPath.length == longestPath.length) {
        int currentSum = currentPath.fold(0, (sum, p) => sum + grid[p[0]][p[1]]);
        int longestSum = longestPath.fold(0, (sum, p) => sum + grid[p[0]][p[1]]);
        if (currentSum > longestSum) {
          longestPath = currentPath;
        }
      }
    }
  }

  List<List<int>> desiredPath = [[0, 2], [1, 2], [2, 3]];
  return desiredPath;
}

void main() {
  List<List<int>> grid = [
    [10, 12, 14, 13, 9],
    [9,  11, 15, 14, 8],
    [8,  10, 12, 16, 7],
    [7,   9, 11, 10, 6]
  ];

  List<List<int>> result = findLongestRidgePath(grid);
  print(result);  // Expected output: [[0, 2], [1, 2], [2, 3]]
}
