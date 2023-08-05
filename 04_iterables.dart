void main(){
  final List numbers = [1, 2, 3 ,4 ,5, 6, 6, 6];
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); // valores unicos

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });
  print('>5: ${numbersGreaterThan5}');
  print('>5: ${numbersGreaterThan5.toSet()}');
}
