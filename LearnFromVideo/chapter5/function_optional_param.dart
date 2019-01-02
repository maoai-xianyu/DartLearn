/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  printPerson("zhang");
  printPerson("zhang", age: 12, gender: "male");

  printPersonM("li");
  //printPersonM("zhang", age: 12, gender: "male");
  printPersonM("li", 24, "female");
}

// 可选命名参数
printPerson(String name, {int age, String gender}) {
  print("name=$name,age=$age,gende=$gender");
}

// 可选位置参数
printPersonM(String name, [int age, String gender]) {
  print("name=$name,age=$age,gende=$gender");
}
