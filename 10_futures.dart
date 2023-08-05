void main() {
  print('Inicio del programa');
  httpGet('https://gh.com').then((value) {
    // value es el return de httpGet
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error en la petición http';
    return 'Respuesta de la petición http';
  });
}
