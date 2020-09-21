void main() {
  var list1 = [1, 2, 3, 4, true, "str"];
  print('list1 = $list1');

  list1.add("add one");

  print('list1 add $list1');
  print('list1 item ${list1[1]}');

  // 不可变数组
  var list2 = const [1, 3, 5, 6, "str"];
  print('list2 = $list2');

  // 数组不可以变，不能添加元素，会报错  Cannot add to an unmodifiable list
  /*list2.add("不尅变");
  print('list2 不可变 = $list2');*/

  var list3 = new List();
  list3.addAll(list1);

  print('list3 $list3');
  var list4 = ["hello", "world"];
  list4.add("test");
  print('list4 = $list4');

  list4.insert(2, "java");
  print('list insert $list4');
  list4.add("kotlin");
  print('list add =$list4');
  list4.remove('java');
  print('list remove $list4');

  var asMap = list4.asMap();
  // list 转map
  print('asMap $asMap');

  list4.sort();
  print('list4 $list4');
  list4.forEach(print);
  list4.clear();
  print('list4 clear = $list4');
  print(list4.isEmpty);

  var listG = List.generate(100, (i) => "imte $i");
  var listGo = new List<int>.of([1, 2, 3], growable: false);
}
