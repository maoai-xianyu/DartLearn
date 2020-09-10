void main() {
  var rect = Rectangle();
  rect.width = 20;
  rect.height = 10;
  print(rect.area());
  print(rect.area1);
  print(rect.area2);

  // 给面积赋值
  rect.area3 = 600;
  print(rect.width);
}

class Rectangle {
  num width, height;

  // 把 area 改为计算属性
  num area() {
    return width * height;
  }

  // 属性 获取值
  num get area1 {
    return width * height;
  }

  // 简写 获取值
  num get area2 => width * height;

  // 获取值和赋值
  num get area3 => width * height;
  set area3(value) {
    width = value / 20;
  }
}
