

void main() {
  List<int> trail=[3,2,1];
  List<int> boots=[4,5,3];
  
  int currentboot=0;
  
  for(int i=0;i<=trail.length;i++){  // get trail data = 3,2,1
    if(boots[currentboot]<trail[i]){
     
      print(boots[currentboot]);
      
      
      
    }
  }
  
  
}
