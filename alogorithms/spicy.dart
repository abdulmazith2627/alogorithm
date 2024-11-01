void main() {

  List<Map<String, int>> snacks = [
    {'Samosa': 5},
    {'Ketchup': 2},
    {'Chips': 3},
    {'Spicy Nuts': 4}
  ];
  

  int targetSpiciness = 7;
  
  List<List<String>> validcombinations = [];

  void combinations(int currentSum, List<String> currentcombo, int index) {

    if (currentSum == targetSpiciness) {
      validcombinations.add(List.from(currentcombo));
      return;
    }
    
   
    if (currentSum > targetSpiciness) {
      return;
    }
    

    for (int i = index; i < snacks.length; i++) {
      String snackName = snacks[i].keys.first;
      int snackSpiciness = snacks[i][snackName]!;
      
      
      currentcombo.add(snackName);
      combinations(currentSum + snackSpiciness, currentcombo, i);
      currentcombo.removeLast(); 
    }
  }

  combinations(0, [], 0);

  print('Number of combinations: ${validcombinations.length}');// output : 3
  for (var combo in validcombinations) {
    print(combo);
  }
}
