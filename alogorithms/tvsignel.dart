void main() {
  List<int> remote = [12, 13];
  List<int> tv = [2, 16];
  int range = 4;
  bool value=false;

  
    if (tv[0]==remote[0]||tv[0]!=remote[0]) {
       value=(tv[0]-remote[0]).abs()<=range;
         print("Row : $value");// output : true
         
    }  if(tv[1]!=remote[1]||tv[1]==remote[1]){
       value=(tv[1]-remote[1]).abs()<=range;
         print("column : $value");// output : true
    }
    else{
      print("some error");
    }
  
}
