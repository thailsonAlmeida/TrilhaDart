//DartPad
class LazyInit{
  late int varX = varZ;
  late int varY = varX *2;
  int varZ = 10;
}

main() {
  LazyInit linit = LazyInit();
  linit.varZ = 5;
  print(linit.varZ);
  print(linit.varX);
  print(linit.varY);

}