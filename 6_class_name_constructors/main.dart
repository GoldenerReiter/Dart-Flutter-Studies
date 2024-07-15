void main() {
  final Map<String, dynamic> rawJson = {
    "name": "John",
    "power": "Godlike",
    "isAlive": true,
  };

  Hero john = Hero.fromJson(rawJson);

  print(john);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "No name found",
        power = json["power"] ?? "No power found",
        isAlive = json["isAlive"] ?? false;

  @override
  String toString() => """Name: $name, 
    Power: $power, 
    Is Alive?: ${isAlive ? "Alive and well." : "Dead."}""";
}
