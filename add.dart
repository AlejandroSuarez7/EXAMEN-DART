import 'dart:io';

void add(List<Map<String, dynamic>> peliculas) {
  stdout.write('Título: ');
  String? titulo = stdin.readLineSync()?.trim();

  stdout.write('Director: ');
  String? director = stdin.readLineSync()?.trim();

  stdout.write('Año de estreno: ');
  String? anioInput = stdin.readLineSync()?.trim();

  stdout.write('Género: ');
  String? genero = stdin.readLineSync()?.trim();

  if (titulo == null || titulo.isEmpty ||
      director == null || director.isEmpty ||
      anioInput == null || anioInput.isEmpty ||
      genero == null || genero.isEmpty) {
    print('Error: Ningún campo puede estar vacío.');
    return;
  }

  int? anio = int.tryParse(anioInput);
  if (anio == null) {
    print('Error: El año debe ser un número válido.');
    return;
  }

  peliculas.add({
    'titulo': titulo,
    'director': director,
    'anio': anio,
    'genero': genero
  });

  print('Película agregada correctamente.');
}


