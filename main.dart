import 'dart:io';
import 'add.dart';
import 'list.dart';
import 'update.dart';
import 'delete.dart';

void main() {
  List<Map<String, dynamic>> peliculas = [];
  bool continuar = true;

  while (continuar) {
    print('\n====== MENÚ PRINCIPAL - CINE ======');
    print('1. Agregar película');
    print('2. Listar películas');
    print('3. Actualizar película');
    print('4. Eliminar película');
    print('5. Salir');
    stdout.write('Seleccione una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        add(peliculas);
        break;

      case '2':
        list(peliculas);
        break;

      case '3':
        update(peliculas);
        break;

      case '4':
        delete(peliculas);
        break;

      case '5':
        continuar = false;
        print('Programa finalizado correctamente.');
        break;

      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }
}