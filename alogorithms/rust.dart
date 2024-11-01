void main(){
  List rust_grid = [
    [11, 3, 5, 2],
    [10, 6, 8, 3],
    [7, 2, 1, 5],
    [3, 4, 6, 7]
];
int max_allowable_rust = 4;
 int count=0;
 for (var i in rust_grid) {
   for (var j in i) {
     if (j>max_allowable_rust) {
       count++;
     }
   }
 }
  print(count);// output is 9
}