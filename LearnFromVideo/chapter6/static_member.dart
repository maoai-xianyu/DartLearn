void main() {
  var page = Page();
  // 静态的方法不能被一个实例的对象访问
  // page.scrollDown();
  Page.scrollDown();

  page.scrollUp();

  Page.currentTime = "2222";
  Page.currentTime = "4444";
  print(Page.currentTime);
}

class Page {
  // 类里面声明常量
  static const int maxpage = 100;

  // 静态属性(类属性)
  static String currentTime;

  // 静态属性(类属性)
  static int currentPage = -1;

  // 下滑 静态的方法不能访问非静态苏醒
  static void scrollDown() {
    currentPage = 1;
    print("ScrollDown");
  }

  // 上滑 对象方法
  void scrollUp() {
    currentPage++;
    print("ScrollUp");
  }
}
