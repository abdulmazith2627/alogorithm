void main() {
  String pattern ="DDDUUU";
   String pattern2 ="DDUDUUD";
  
  print(patterns(pattern));// output is true
   print(patterns(pattern2));// output is false
}

class BowingClass<Datatype1, Datatype2> {
  final Datatype1 value1;
  final Datatype2 value2;
  
  BowingClass({
    required this.value1,
    required this.value2,
  });
  
  @override
  String toString() {
    return '($value1, $value2)';
  }
}

BowingClass<bool, String> patterns(String pattern) {
  int d = 'D'.allMatches(pattern).length;
  int u = 'U'.allMatches(pattern).length;
  int excess;
  bool isPass = false;
   
  if (d == u) {
    return BowingClass(value1:true, value2:pattern);
  }

  if (d > u) {
    isPass = true;
    excess = (d - u) ~/ 2;

  } else {
    isPass = false;
    excess = (u - d) ~/ 2;
  }

  List<String> listValue = pattern.split('');


  int replaceCount = 0;
  for (int i = 0; i < listValue.length; i++) {
    if (isPass && listValue[i] == 'D'&&i % 2 == 0&&replaceCount < excess) {
      listValue[i] = 'U';
      replaceCount++;
    } else if (!isPass &&listValue[i] == 'U' && i % 2 != 0&&replaceCount < excess) {
      listValue[i] = 'D';
      replaceCount++;
    }
  }

  d = listValue.where((data) => data == 'D').length;
  u = listValue.where((data) => data == 'U').length;
  

  bool balance = d == u;
  if (balance) {
    return BowingClass(value1:true, value2: listValue.join(''));
  } else {
    return BowingClass(value1: false, value2: pattern); 
  }
}
