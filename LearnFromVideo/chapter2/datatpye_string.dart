/**
 * create by zhangkun .
 * on 2018/10/31
 */
void main() {
  String str1 = 'hello';
  print('str1 $str1');

  String str2 = ''' hello 
  dart''';

  print('str2 = $str2');

  String str3 = 'hello \n dart';
  print('str3 = $str3');

  String str4 = r'hello \n dart';
  print('str4  转义 = $str4');

  print(str4 + "new");
  print(str4 * 2);
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
