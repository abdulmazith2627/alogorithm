import 'dart:io';

void main() {
 int size=5;
 List data =List.filled(size,0);
  String getvaluefromuser;

 for (var i = 0; i < 5; i++) {
  print("Enter the any value $i : ");
  getvaluefromuser=stdin.readLineSync()!;
  data[size++];

 }

print(data.length);
}