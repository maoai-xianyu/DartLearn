/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  printPerson("zhang");
  printPerson("zhang", age: 12, gender: "male");

  printPersonM("li");
  printPersonM("li", 24, "female");
}

// 可选命名参数
printPerson(String name, {int age, String gender}) {
  print("name=$name,age=$age,gende=$gender");
}

// 如果存在具体参数，可选参数声明，必须在参数后面
/*printPerson2({int age, String gender},String name) {
  print("name=$name,age=$age,gende=$gender");
}*/

// 可选位置参数
printPersonM(String name, [int age, String gender]) {
  print("name=$name,age=$age,gende=$gender");
}
