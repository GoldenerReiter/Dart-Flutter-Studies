void main() {
  Square mySquare = Square(side: 10);

  mySquare.side = 20;

  print(mySquare);
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0, "Side must be greater or equal to 0."),
        _side = side;
  double calculateArea() => _side * _side;
  double get area => calculateArea();

  set side(double value) {
    if (value < 0) throw "Value must be >=0";
    _side = value;
  }

  @override
  String toString() => "The area of your square is: ${area.toString()}";
}
