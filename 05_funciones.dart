void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Suma Opt: ${addTwoNumbersOptional(10)}');
  print(greetPerson(name: 'Sergio', message: 'Hi'));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;
// int addTwoNumbersOptional(int a, [int? b]) {  // argumento opcional
//   b = b ?? 0;  // B ??= 0;
//   return a + b;
// }

// más limpio
int addTwoNumbersOptional(int a, [int b = 0]) {  // argumento opcional
  return a + b;
}

String greetPerson({required String name, String message = 'Hola, '}) {  // kwargs
  return '$message $name';
}
