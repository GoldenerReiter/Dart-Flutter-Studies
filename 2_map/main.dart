void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isAlive": true,
    "abilities": <String>["Impostor"],
    "sprites": {1: "ditto/front.png", 2: "ditto/back.png"}
  };

  print("""
  Name: ${pokemon["name"]}
  Health: ${pokemon["hp"]}
  Is Alive?: ${pokemon["isAlive"]}
  Abilities: ${pokemon["abilities"]}
  Sprites:
    Front: ${pokemon["sprites"][1]}
    Back: ${pokemon["sprites"][2]} 
  """);
}
