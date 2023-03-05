main(){
  //Maps! Key/Value Pairs
  var toppings = {"John":"Calabresa", "Mary":"Portuguesa"};
  print(toppings);
  print(toppings["John"]);

  //Show Values
  print(toppings.values);

  //Show Keys
  print(toppings.keys);

  //Show Length
  print(toppings.length);

  //Add Something
  toppings["Marlon"] = "Bacon";
  print(toppings);

  //Add many things
  toppings.addAll({"Tina":"Bacon", "Steve":"Cheese"});
  print(toppings);

  //Remove Something
  toppings.remove("Steve");
  print(toppings);

  //Remove everything
  toppings.clear();
  print(toppings);
}