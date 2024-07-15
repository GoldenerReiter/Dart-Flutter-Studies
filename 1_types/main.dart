void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = <String>["Impostor"];
  final List<String> sprites = ["ditto/front.png", "ditto/back.png"];

  // dynamic: It is initially null, but it will dynamically assign a type

  dynamic errorMessage = "Testing dynamic";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = () => true;
  errorMessage = null;

  // just be careful when you use it, it is a kind of nihilistic type

  print("""
  name -> $pokemon
  HP -> $hp
  is Alive? -> $isAlive
  Abilities -> $abilities
  Sprites -> $sprites
  $errorMessage
  """);
}
