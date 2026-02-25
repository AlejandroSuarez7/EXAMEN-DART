import 'dart:io';
import 'list.dart';
void delete(List<Map<String, dynamic>> peliculas) {
  if (peliculas.isEmpty) {
    print('No hay películas para eliminar.');
    return;
  }

  list(peliculas);
  stdout.write('Ingrese el índice de la película a eliminar: ');
  String? indexInput = stdin.readLineSync();

  int? index = int.tryParse(indexInput ?? '');
  if (index == null || index < 0 || index >= peliculas.length) {
    print('Índice inválido.');
    return;
  }

  peliculas.removeAt(index);
  print('Película eliminada correctamente.');
}