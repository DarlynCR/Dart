

main(){

  //<String> indica el tipo de dato de retorno del future
  Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos después!');
    return 'Retorno del future'; // Resultado o retorno del future
  });

  // Para consumir el resultado del future 
  //then -> espera a q elfuture se resuelva (se ejecute) y obtiene su resultado
  // timeOut.then((texto) => print(texto));
  timeOut.then(print);

  print('Fin del Main');








}