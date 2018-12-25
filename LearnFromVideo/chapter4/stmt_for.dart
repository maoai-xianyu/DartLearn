/**
 * create by zhangkun .
 * on 2018/10/31
 */

void main() {
  var list = ["str", "java", "dart", "kotlin"];

  for (int i = 0; i < list.length; i++) {
    print('list$i  =  ${list[i]}');
  }

  for(var str in list){
    print('list for in  =  $str');
  }

  list.forEach(printValue);
}

void printValue(key){
  print('value = $key');
}
