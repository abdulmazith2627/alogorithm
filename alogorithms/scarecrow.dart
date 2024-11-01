

void main() {

  String farm = "C..C.C.";

  print("scarecrow : ${scarecrow(farm)}");// output is 2



}


int scarecrow(farm){

  int i=0;
  int scarecrowcount=0;

  while (i<farm.length) {
    if (farm[i]=="C") {
      if(i + 1 >= farm.length || farm[i + 1] != '.'){
        return -1;
      }
     scarecrowcount++;

    i+=3;


    }else{
      i++;
    }
  }
 
  return scarecrowcount;

}