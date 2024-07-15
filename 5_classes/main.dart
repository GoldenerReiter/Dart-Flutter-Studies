void main() {
  Hero john = Hero(name: "John", power: "Godlike");
  print(john);
  print(john.name);
  print(john.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Powerless"});

  // overrides the method from the upper class
  @override
  String toString() {
    return "I will not be invoked as the original method!";
  }

  // params as incognito
  // Hero(this.name, this.power);

  // controlled init C++ style
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;
}
