/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  printPerson("zhang");
  printPerson("zhang", age: 12, gender: "male");
}

// 可选命名参数
printPerson(String name, {int age = 24, String gender = "famale"}) {
  print("name=$name,age=$age,gende=$gender");
}
