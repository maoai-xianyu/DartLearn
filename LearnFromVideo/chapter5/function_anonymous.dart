/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  var func = () {
    print("hello");
  };

  func();

  var funcM = (str) {
    print("hello $str");
  };

  funcM("test");

  //不推荐使用
  (() {
    print("test one");
  })();

  var listm = ["h", "e", "1", "1", "o"];

  // 匿名方法作为参数
  print(listTimes(listm, (str) {
    return str * 4;
  }));

  var listmm = ["h", "e", "1", "1", "o"];

  print(listTimesM(listmm));


  // 匿名函数返回值
  testBar((){
    print('匿名函数被调用');
    return 10;
  });

  // 箭头函数不能有多行
  testBar(()=> print("箭头函数被调用"));
}

List listTimes(List list, String f(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = f(list[index]);
  }
  return list;
}

List listTimesM(List list) {
  var func = (str) {
    return str * 5;
  };
  for (var index = 0; index < list.length; index++) {
    list[index] = func(list[index]);
  }
  return list;
}


void testBar(Function func){
  var result = func();
  return result;
}