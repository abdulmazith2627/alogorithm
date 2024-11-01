
void main() {
 
  List rhinoCount = [10, 8, 15, 12];
  int maxrhinos = 10;
   int totalrangers = 0;

   for (int rhinos in rhinoCount) {

    totalrangers += (rhinos / maxrhinos).ceil();
  }
  print(totalrangers);
 
}
