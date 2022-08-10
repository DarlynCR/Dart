

main(){


  Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
    //simular un error para el ejemplo
    if( 1 == 1 ){
      throw 'Auxilio, explotó esta cosa!';
    }

    return 'Retorno del future'; 
  });

  timeOut.then(print).catchError(print);//se maneja el error del Future

  print('Fin del Main');

}