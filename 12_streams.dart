void main() {
  // emitNumbers();  // no emite nada si no hay nadie escuchando
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {  // flujo de información
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);  // solo tomar 5 y cerrarse
}
