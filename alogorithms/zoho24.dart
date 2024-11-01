
void main() {


  List<List<String>> mapgrid = [
  ['E', 'W', 'E', 'T'],
 ['R', 'E', 'T', 'E'],
 ['E', 'E', 'W', 'E'],
 ['T', 'E', 'E', 'R']

  ];
int rows = mapgrid.length;
  int cols = mapgrid[0].length;

  bool checkNearby(int x, int y, String target) {
    if (x > 0 && mapgrid[x - 1][y] == target) return true;  
    if (x < rows - 1 && mapgrid[x + 1][y] == target) return true;  
    if (y > 0 && mapgrid[x][y - 1] == target) return true; 
    if (y < cols - 1 && mapgrid[x][y + 1] == target) return true;  
    return false;
  }


  List<int> bestSpot = [-1, -1];
  int bestScore = -1;


  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (mapgrid[i][j] == 'E') { 
        int count = 0;
        if (checkNearby(i, j, 'W')) count++;  
        if (checkNearby(i, j, 'T')) count++; 
        if (checkNearby(i, j, 'R')) count++;  

    if (count >= 2 && count > bestScore) {
    bestScore = count;
    bestSpot = [i, j];
}
      }
    }
  }

  List<int> result = bestSpot;
  print("output : (${result[0]}, ${result[1]})");// output (1,1)
}
