/**
 * create by zhangkun .
 * on 2018/10/31
 */

void main() {
  var list = ["str", "java", "dart", "kotlin"];

  for (int i = 0; i < list.length; i++) {
    if (list[i] == "dart") {
      continue;
    }
    print('list$i  =  ${list[i]}');
  }

  for (var str in list) {
    if(str == "dart") break;
    print('list for in  =  $str');
  }

  print('-------------');

  var list1 = ["str1", "java1", "dart1", "kotlin1"];
  
  for (var item in list) {
    if(item == "java"){
      break;
    }
    print('-------------list $item');
    for (var item1 in list1) {
      if(item1 == "java1"){
        break;
      }
      print('-------------list1  $item1');

    }
  }



}
