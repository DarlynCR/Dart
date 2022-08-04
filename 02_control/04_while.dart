

import 'dart:io';

main(){

  //while 
  String? continuar = 'n';
  int contador = 0;
  int contador2 = 0;

  print('While:');
  while(continuar =='y'){

      contador++;
      print('Contador: $contador');

      stdout.writeln('Desea continuar?: (y/n)');
      continuar = stdin.readLineSync();
  }


  //Do while
  print('Do While:');
  do{
      contador2++;
      print('Contador: $contador2');

      stdout.writeln('Desea continuar?: (y/n)');
      continuar = stdin.readLineSync();
  }while(continuar =='y');


}