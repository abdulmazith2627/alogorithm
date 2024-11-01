import 'dart:io';

void alphabetically(){
  int n =5;
List alphabetic=[];// eg : if give input Introduction,Conclusion,Appendix,History,Methods

 print("You must enter 5 words:");

for (var i = 0; i < n; i++) {
  print("Enter word ${i+1} : ");
  String? getdata=stdin.readLineSync();
  if(getdata!=""|| getdata!.isNotEmpty){
     alphabetic.add(getdata);
  }
 else{
  print("please try again");
  i--;
 }
}
if(n==alphabetic.length){
  alphabetic.sort();
 print(alphabetic);// output : [Appendix, Conclusion, History, Introduction, Methods]
}
else{
 print("error"); 
}

  
  

}


void main(){

alphabetically();


}