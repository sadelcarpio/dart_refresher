void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://gh.com');
    print('Exito: $value');
  } on Exception catch(err) {  // agarra este tipo de excepcion
    print('Tenemos un Exception: $err');
  }
  catch (err) {
    print('Oops, algo terrible pasó: $err');
  } finally {
    print('Fin del try/catch');
  }
  // espera hasta el final para ejecutar esto
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1)); // espera el segundo
  throw Exception('No hay parámetros en el URL');
  // throw 'Error en la petición';
  // return 'Tenemos un valor de la petición'; // y retorna
}
