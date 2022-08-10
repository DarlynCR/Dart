//flujo de datos observables
// Son asincoronos
//la información va a entrar por el inicio del mismo
// antes de enviarle información se debe definir el en stream que 
//va a hacer con la data

import 'dart:async';

main(){
  // fnal streamController = StreamController(); en esta declaración el tipo de dato que recibirá el stream
  // sera dynamic 
  // StreamController<String>() -> le estoy indicando que solo recibirá Strings
    // sólo un listen puede estar escuchando este stream -  final streamController = StreamController<String>();
  final streamController = StreamController<String>.broadcast();//Transforma mi stream en uno de multiples suscriptores
  
  // Se indica como va  areaccionar el stream cuando venga info
  // con esto hago referencia al fujo de información ->streamController.stream
  //dentro de listen -> lo que se va hacer cuando se reciba la info
  streamController.stream.listen(
    (data) => print('Despegando! $data'),
    //debo manejar que se va a hacer si ocurre un error
    onError: (err) => print('Error! $err'),
    onDone: () => print('Misión completa!'),//Se ejecuta una vez se cierra el stream
    cancelOnError: false //si quiero que se deje de ejecutar el stream cuando ocurra el error
    );

    //como se declaro el stream final streamController = StreamController<String>.broadcast()
    //Deja que el stream tenga multiples escuchas
    streamController.stream.listen(
    (data) => print('Despegando listen stream 2! $data'),
    onError: (err) => print('Error listen stream 2! $err'),
    onDone: () => print('Misión completa listen stream 2!'),
    cancelOnError: false 
    );

  //agregar información como se declaró StreamController<String>() -> solo recibe strings
  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  // simulando error
  streamController.sink.addError('Houston, tenemos un problema!');
  //Como en el stream está configurado cancelOnError: true no se ejecutarían la sig lineas
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');

  //Cuando se que el stream no va recibir más información
  //se debe cerrar 
  streamController.sink.close(); //cierra el stream y se ejecuta el onDone


  print('Fin del main!');

}