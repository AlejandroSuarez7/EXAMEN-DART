import 'dart:io';
import 'list.dart';
void update(List<Map<String, dynamic>> peliculas) {
  if (peliculas.isEmpty) {
    print('No hay películas para actualizar.');
    return;
  }

  list(peliculas);
  stdout.write('Ingrese el índice de la película a actualizar: ');
  String? indexInput = stdin.readLineSync();

  int? index = int.tryParse(indexInput ?? '');
  if (index == null || index < 0 || index >= peliculas.length) {
    print('Índice inválido.');
    return;
  }

  var pelicula = peliculas[index];

  stdout.write('Nuevo título (${pelicula['titulo']}): ');
  String? nuevoTitulo = stdin.readLineSync()?.trim();

  stdout.write('Nuevo director (${pelicula['director']}): ');
  String? nuevoDirector = stdin.readLineSync()?.trim();

  stdout.write('Nuevo año (${pelicula['anio']}): ');
  String? nuevoAnioInput = stdin.readLineSync()?.trim();

  stdout.write('Nuevo género (${pelicula['genero']}): ');
  String? nuevoGenero = stdin.readLineSync()?.trim();

  if (nuevoTitulo != null && nuevoTitulo.isNotEmpty) {
    pelicula['titulo'] = nuevoTitulo;
  }

  if (nuevoDirector != null && nuevoDirector.isNotEmpty) {
    pelicula['director'] = nuevoDirector;
  }

  if (nuevoAnioInput != null && nuevoAnioInput.isNotEmpty) {
    int? nuevoAnio = int.tryParse(nuevoAnioInput);
    if (nuevoAnio != null) {
      pelicula['anio'] = nuevoAnio;
    } else {
      print('Año inválido. Se mantiene el valor anterior.');
    }
  }

  if (nuevoGenero != null && nuevoGenero.isNotEmpty) {
    pelicula['genero'] = nuevoGenero;
  }

  print('Película actualizada correctamente.');
}