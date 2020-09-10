void main() {
  var page = Page();
  // 静态的方法不能被一个实例的对象访问
  // page.scrollDown();
  Page.scrollDown();

  page.scrollUp();
}

class Page {

  // 类里面声明常量
  static const int maxpage = 100;

  // 静态
  static int currentPage = -1;

  // 下滑 静态的方法不能访问非静态苏醒
  static void scrollDown() {
    currentPage = 1;
    print("ScrollDown");
  }

  // 上滑
  void scrollUp() {
    currentPage++;
    print("ScrollUp");
  }
}
