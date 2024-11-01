
void main() {
  List<String> word = ["jumbo", "robot", "abjuvombo"];
  var getdata;
 getdata= word.map((word) {
    return jumbo(word) ? 'JUMBO' : word;
  }).toList();
 
  print(getdata);// output : [JUMBO, robot, JUMBO]
}


bool jumbo(word){
  List jumbo=['J', 'U', 'M', 'B', 'O'];
  int j=0;

   for (int i = 0; i < word.length; i++) {
      if (word[i].toUpperCase() == jumbo[j]) {
        
        j++;
      }
    if (j == jumbo.length) return true;
      
      
  }
  return false;
}