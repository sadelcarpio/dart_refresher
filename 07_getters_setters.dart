void main() {
  final mySquare = Square(side: 10);
  mySquare.side = 5; // como prevenir esto
  print('área: ${mySquare.area}');
}

class Square {
  double _side; // atributo privado

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  set side(double value) {
    print('Setting new value ${value}');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }

  double get area {
    // mediante getter
    return _side * _side;
  }

  double calculateArea() {
    // mediante método
    return _side * _side;
  }
}
