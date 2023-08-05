String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Romper referencia
  mapa = {...mapa};
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

main(List<String> args) {
  String nombre = 'sergio';
  String nombre2 = capitalizar(nombre);
  // print(nombre);
  // print(nombre2);
  Map<String, String> persona = {'nombre': 'sergio dc'};
  Map<String, String> persona2 = capitalizarMapa(persona);
  print(persona);
  print(persona2);
}
