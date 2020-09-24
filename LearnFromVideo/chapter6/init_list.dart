void main() {
  var person = Person("Tom", 20);
  print("没有写 gender 使用默认 $person");
  var person1 = Person("Tom", 20, gender: "female");
  print("有写 gender 使用赋值 $person1");

  var p = Person.withMap({"name": "zhang", "age": 13, "gender": "female"});
  p.work();
}

const temp = 30;

class Person {
  String name;
  int age;
  final String gender;

  // 在执行大括号的时候，表示我们的类以及初始化完毕了，所以需要在大括号执行之前为 gender 赋值
  /*Person(this.name,this.age){
    this.gender = "male";
  }*/

  // 初始化列表如何使用,没有给gender赋值，就赋值一个默认值，this.gender 可以写三元运算符
  Person(this.name, this.age, {String gender})
      : this.gender = gender ?? "male" {}
  // 可以写    三元运算符
  /*Person(this.name, this.age, {String gender})
      : this.gender = gender ?? (temp > 20 ? "male" : "female") {}*/

  // 与上面的方式进行比较，方式差不多，但是有局限性，在这里只能做确定值的赋值操作，this.gender 不可以写三元运算符
  // 所以推荐使用上面的初始化列表
  //Person(this.name, this.age, {this.gender = "male"}) {}

  // gender = map["gender"] 会在构造方法的前面执行
  Person.withMap(Map<String, dynamic> map) : gender = map["gender"] {
    this.name = map["name"];
    this.age = map["age"];
  }

  void work() {
    print("Work...  $name $age $gender");
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age, gender: $gender}';
  }
}
