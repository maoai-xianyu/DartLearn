import 'dart:convert';
import 'lib/Animal.dart';
import 'dart:math';
import 'dart:io';

void main() async {
  var animal = new Animal("kun", 20);
  animal.work();

  var a = 10;
  var b = 20;
  var c = min(a, b);
  print('c  == $c');

  var result = await _getDataFromZhiHuApi();
  print('result === $result');
}

_getDataFromZhiHuApi() async {
  // 1. 创建httpclient对象
  var httpClient = new HttpClient();
  // 2. 创建Uri对象
  var uri = new Uri.https('news-at.zhihu.com', '/api/3/stories/latest');
  // 3. 发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  // 4. 关闭请求，等待响应
  var response = await request.close();
  // 5. 解码响应的内容
  return await response.transform(utf8.decoder).join();
}
