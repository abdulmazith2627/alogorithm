

import 'dart:io';
String search(words,ch){
 String largletter='';
 for (String getword in words) {
   String data=getword.toLowerCase();
    if (data.startsWith(ch)) {
      if (data.length>largletter.length) {
         largletter=data;
      }
    }
 }
 return largletter.isEmpty?'empty data':largletter;
}
void main() {
  // Example 1
  List<String> words = [];
  String ch = '';
  print("   You are allowed to enter only 5 words   ");
  for (var i = 0; i < 5; i++) {
    print("Enter any words ${i+1} : ");
    String senddata=stdin.readLineSync()!;
    words.add(senddata.replaceAll(RegExp(r'\s+'), ''));
  }
  
  print("Enter the single character for get largest word  : ");
    String check=stdin.readLineSync()!;
         ch=check;
     print("List of Words : $words");
    print("single character : $ch");
  
   print("longest word : ${search(words, ch)}");
}