void main() {
  print(greetEveryone());
  print(addTwoNumbers(7, 5));
  print(greetPerson(name: "John"));
}

String greetEveryone() => "Hello everyone!";
int addTwoNumbers(int a, int b) => a + b;

int addOrReturn(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String? message = "Hello, "}) =>
    "$message$name";
