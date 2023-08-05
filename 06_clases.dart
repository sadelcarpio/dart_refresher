void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);

  final Hero wolverine =
      Hero(name: 'Logan', power: 'regeneracion', isAlive: true);
  print(ironman);
  print(wolverine);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero(
      {required this.name,
      required this.isAlive,
      this.power = 'Sin poder'}); // inicialización mas simple

// Hero(String pName, String pPower) {  // muy tarde para inicializar (error)
//   name = pName; // this es opcional
//   this.power = pPower;
// }

// Hero(String pName, String pPower)  // initializer list
//     : name = pName,
//       power = pPower;

  Hero.fromJson(Map<String, dynamic> json)  // named constructor
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}
