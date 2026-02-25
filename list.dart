void list(List<Map<String, dynamic>> peliculas) {
  if (peliculas.isEmpty) {
    print('No hay películas registradas.');
    return;
  }

  print('\n====== LISTA DE PELÍCULAS ======');
  for (int i = 0; i < peliculas.length; i++) {
    print('Índice: $i');
    print('Título: ${peliculas[i]['titulo']}');
    print('Director: ${peliculas[i]['director']}');
    print('Año: ${peliculas[i]['anio']}');
    print('Género: ${peliculas[i]['genero']}');
    print('-----------------------------');
  }
}
