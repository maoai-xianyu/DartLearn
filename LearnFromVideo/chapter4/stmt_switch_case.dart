/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  String lang = "Dart";

  switch (lang) {
    case "Dart":
      print('dart is my language');
      break;
    case "Java":
      print('Java is my language');
      break;
    case "Python":
      print('Java is my language');
      break;
    default:
      print('Default is my language');
      break;
  }

  lang = "Java";
  switch (lang) {
    D: // 声明执行那句话
    case "Dart":
      print('dart is my language');
      break;
    case "Java":
      print('Java is my language');
      continue D;
    case "Python":
      print('Java is my language');
      break;
    default:
      print('continue Default is my language');
      break;
  }
}
