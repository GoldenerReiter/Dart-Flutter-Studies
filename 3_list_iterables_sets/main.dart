void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print("List original $numbers");
  // List type methods
  print("Length: ${numbers.length}");
  print("Index 0: ${numbers[0]}");
  print("First: ${numbers.first}");
  print("Reversed: ${numbers.reversed}");

  final reversedNumbers = numbers.reversed;
  print(reversedNumbers);
  print("As a List: ${reversedNumbers.toList()}");
  print("As a set: ${reversedNumbers.toSet()}");
  // this last one will remove duplicates

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print(numbersGreaterThan5);
}
