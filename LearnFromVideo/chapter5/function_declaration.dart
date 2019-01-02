/**
 * create by zhangkun .
 * on 2019/01/02
 */

// void 表示不需要返回值
void main(List args) {
  print('args ${args}');

  print(getPerson("zhangsan", 16));

  printPerson("zhang4", 16);

  print(getPersonM("zhang5", 16));

  print(getPersonMExpr("zhang6", 16, 2));
}

String getPerson(String name, int age) {
  return "name = $name, age == $age";
}

// 返回类型和参数类型可以省略
void printPerson(name, age) {
  print('name = $name, age == $age');
}

// 箭头语法
getPersonM(name, age) => "name = $name, age == $age";

// 箭头语法
getPersonMExpr(name, age, gender) =>
    gender == 1 ? "name = $name, age == $age" : "test";
