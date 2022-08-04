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


  //labelfor

  outerLoop:
  for (int i = 1; i < 5; i++){
      print('Valor i: $i');

      innerLoop:
      for (int j = 1; j < 5; j++){
      print('Valor j -> $j');

      if(j == 2){
        break outerLoop;
      }
  }
  }

}