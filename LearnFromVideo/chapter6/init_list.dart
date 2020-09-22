void main() {
  var person = Person("Tom", 20);
  print("没有写 gender 使用默认 $person");

  var p = Person.withMap({"name": "zhang", "age": 13, "gender": "female"});
  p.work();
}

class Person {
  String name;
  int age;
  final String gender;

  // 在执行大括号的时候，表示我们的类以及初始化完毕了，所以需要在大括号执行之前为 gender 赋值
  /*Person(this.name,this.age){
    this.gender = "male";
  }*/

  // 初始化列表如何使用,没有给gender赋值，就赋值一个默认值
  Person(this.name, this.age, {int gender}) : this.gender = gender ?? "male" {}

  // gender = map["gender"] 会在构造方法的前面执行
  Person.withMap(Map<String, dynamic> map) : gender = map["gender"] {
    this.name = map["name"];
    this.age = map["age"];
  }

  // 这种方式是有问题的
  // Person(this.name,this.age,{this.gender = "male"})

  void work() {
    print("Work...  $name $age $gender");
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age, gender: $gender}';
  }
}
