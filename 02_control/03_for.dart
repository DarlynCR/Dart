import 'dart:io';

main(){

  //For
  print('Bucle for - index:');
  for (int i = 1; i<= 10; i++){
      print('index i: $i');
  }

  // Ejercicio
  stdout.writeln('Digita un número:');
  String? num = stdin.readLineSync();
  print("Tabla del $num");
  for(int i = 1; i<=10; i++){
    if(num!= null){
      print('$num * $i = ${int.parse(num) * i }');
    }  
  }

  // For in
  List<String> listSuper = ['Hulk', 'Iron Man', 'Capitán América'];
  print('Listado de Super Héroes:');
  for ( String item in listSuper){
    print(item);
  }
}