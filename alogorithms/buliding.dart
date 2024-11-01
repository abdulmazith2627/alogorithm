void main(){
List  building=[0,1,5,2,6];// list of building 
List addpont=[];
int value=-1;// get building value


for (var i = 0; i <building.length; i++) {// get list of building
   if(building[i]>value){
     print("build : ${building[i]}, value : $value = ${building[i]>value}");
     addpont.add(i);
     value=building[i];
      
   }
}

 print(addpont);// output : [0, 1, 2, 4]
}