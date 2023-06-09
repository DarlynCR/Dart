import 'dart:io';
//Obtener información a través de la consola

main(){
    //Imprimir en cmd
    stdout.write('Cuál es tu nombre?');

    //Leer información
    String name = stdin.readLineSync() ?? "No hay valor"; //stdin retorna string
    // String? -> porque stdin.readLineSync puede retornar null

    stdout.writeln('Tu nombre es: $name');
  

}