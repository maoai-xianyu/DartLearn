void main(){

  //  growable属性为true, list可以add，false时，list不可add
  List list = new List<int>.filled(3, 0, growable: true);
  List list2 = new List.filled(3, []);
  list.add(0);
// list2.add([]); error
  print(list2);
  print(list);
}