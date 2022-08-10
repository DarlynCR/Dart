import 'dart:io';

main() async{
  
  String path = Directory.current.path + '\\04_tipos_nocomunes\\assets\\persons.txt';
 
  //Función que resuelve un future
  //leerArchivo(path).then(print);

  //Ser trabaja con una función future pero la vuelve sincrona
  String texto = await leerArchivo(path); //se agrega async al main, porque await solo se puede usar dentro de una función async

  print(texto);
  print('Fin del main');
 
}

Future<String> leerArchivo(String path){ 
  File file = new File(path);
  return file.readAsString();
}

// indica que la función va retornar siempre a la fuerza un Future
/*leerArchivo(String path) async { 
  //File file = new File(path);
  //return file.readAsString();
  return 0;
}*/