/**
 * create by zhangkun .
 * on 2018/10/31
 */
void main() {
  String str1 = 'hello';
  print('str1 $str1');

  // 可以字符串，多行的。可以用 """ """
  String str2 = ''' hello 
  dart''';
  print('str2 = $str2');
  String str2_1 = """ hello 
  dart""";
  print('str2_1 = $str2_1');
  print('str2 == str2_1 ${str2 == str2_1}');

  String str3 = 'hello \n dart';
  print('str3 = $str3');
  String str4 = r'hello \n dart'; // r创建原始raw字符串
  print('str4  转义 = $str4');

  print(str4 + "new"); // 拼接
  print(str4 * 2); // 数据倍数
  print(str4 == str3);

  print(str4[1]);
  print(str4.isEmpty);
  print(str4.contains("str"));
  print(str4.substring(0, 3));
  var split = str4.split(" ");
  print(split);
  for (var i = 0; i < split.length; i++) {
    print(split[i]);
  }
}
