import 'dart:math';

main(){
  List lst1 = [];
  List lst2 = [];
  List lst3 = [];

  for (int i = 1; i <= 50; i++) {
    lst1.add(Random().nextInt(1000));
  }

  for (int i = 0; i < 50; i++) {
    lst2.add(Random().nextInt(1000));
  }

  lst3 = [...lst1,...lst2];

  print("Lista 01: ");
  print(lst1);
  print("Lista 02: ");
  print(lst2);
  print("Lista 01 e 02: ");
  print(lst3);
}