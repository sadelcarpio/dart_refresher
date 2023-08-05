void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  // bool? isAlive; // es posible ser nulo
  final bool isAlive = true;
  final List<String> abilities = <String>['impostor'];  // list of Strings
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  dynamic errorMsg = 'Hola';
  errorMsg = true;
  errorMsg = () => true;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMsg
  """);
}