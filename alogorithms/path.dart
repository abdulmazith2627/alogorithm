
void main(){
  String direction="DULLRRUURDLD";
  int value1=0;
  int value2=0;

  for (int i=0;i<= direction.length;i++) {
   switch (direction) {
       case 'U':
       value1++;
       break;
        case 'D':
       value1--;
       break;
        case 'R':
       value2++;
       break;
        case 'L':
       value1--;
       break;
   }
  }

  print("x : $value1, Y : $value2");
  print(value1==0&&value2==0);
}