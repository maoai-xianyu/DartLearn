/**
 * create by zhangkun .
 * on 2018/10/31
 */
void main() {
  int gender = 0;

  String str = gender == 0 ? "Male" : "Female";

  print('str = ${str}');

  String a = "dart";
  String b = "Java";
  String c = a ?? b;
  print('c = $c');
}
