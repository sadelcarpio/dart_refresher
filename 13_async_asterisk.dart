void main() {
  emitNumber().listen((event) {print('Stream value: $event');});
}

Stream<int> emitNumber() async* {  // async* retorna un Stream
  final valuesToEmit = [1, 2, 3, 4, 5];
  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;  // entrega un valor
  }
}
