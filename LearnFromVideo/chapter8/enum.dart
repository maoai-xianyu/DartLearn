const spring = 0;
const summer = 1;
const autumn = 2;
const winter = 3;

void main() {
  var currentSeason = 1;
  switch (currentSeason) {
    case spring:
      print("1~3月");
      break;
    case summer:
      print("4~6月");
      break;
    case autumn:
      print("7~9月");
      break;
    case winter:
      print("10~12月");
      break;
  }

  var currentSeason1 = Season.SPRING;

  print(currentSeason1.index);
  switch (currentSeason1) {
    case Season.SPRING:
      print("1~3月");
      break;
    case Season.SUMMER:
      print("4~6月");
      break;
    case Season.AUTUMN:
      print("7~9月");
      break;
    case Season.WINTER:
      print("10~12月");
      break;
  }
}

enum Season { SPRING, SUMMER, AUTUMN, WINTER }
