main(){
  //Lists
  var myList = [1,2,3];
  print(myList);
  print(myList[0]);

  //Change am item
  myList[0] = 41;
  print(myList);

  //Create An empty list
  var emptyList = [];
  print(emptyList);

  //Add to empty list
  emptyList.add(41);
  print(emptyList);

  //Add multiple to empty list
  emptyList.addAll([50,60,70]);
  print(emptyList);

  //Insert at specific position (position, item)
  myList.insert(3, 900);
  print(myList);

  //Insertmany
  myList.insertAll(1, [30,40,50]);
  print(myList);

  // Mixed Lists
  var mixedList = [1,2,3, "Pedro", "Carla"];
  print(mixedList);

  //Remove from list
  mixedList.remove("Pedro");
  print(mixedList);

  //Remove from specific location
  mixedList.removeAt(1);
  print(mixedList);
}