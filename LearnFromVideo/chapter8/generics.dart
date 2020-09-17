void main() {
  var list = new List<String>();
  list.add("value");

  var utiks = new UtilsG<String>();
  utiks.putString("ssss");
  print("utiks  ---> ${utiks._element}");

  var utils = new Utils();
  utils.putEm<String>("测试");


  var fileCache = new FileCache<String>();
  fileCache.setByKey("key", "fileCache");

  var mCache = new MemoryCache<String>();
  mCache.setByKey("key", "mCache");
}

class Utils {
  int elememt;
  String elementStr;

  void putInt(int element) {
    this.elememt = element;
  }

  void putString(String element) {
    this.elementStr = element;
  }

  // 方法泛型,在方法名称的后面添加泛型
  void putEm<T>(T element) {
    print("测试 $element");
  }

  // 泛型方法
  T getData<T>(T element) {
    return element;
  }
}

// 泛型类
class UtilsG<T> {
  // 属性泛型需要从类名传过来
  T _element;

  void putString(T element) {
    this._element = element;
  }

  T get e {
    return _element;
  }
}

abstract class Cache<T> {
  getByKey(String key);

  void setByKey(String key, T value);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('文件缓存  key= $key  value  = $value');
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('内存缓存  key= $key  value  = $value');
  }
}
