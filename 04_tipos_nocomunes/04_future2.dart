

import 'dart:io';

main(){

 
  File file = new File(Directory.current.path + '\\04_tipos_nocomunes\\assets\\persons.txt');//Path de donde se está ejecutando el archivo de dart

  //Leer archivos de manera asincrona
  Future<String> f = file.readAsString();

  f.then(print);
    
  print('Fin del main');
}