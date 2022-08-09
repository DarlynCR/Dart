

main(){

    // ARGUMENTOS
    String name = 'Sergio';
    saludar(name, 'Argumento opcional');

    saludar2( nombre:'Sergio', mensaje:'Argumento por nombre/opcional');
    saludar2(veces: 10 );

    //PASO POR VALOR

    String nombre  = 'fernando';
    String nombre2 = capitalizar(nombre);

    print('Paso por valor:');
    print(nombre);
    print(nombre2);

    //PASO POR REFERENCIA 

    Map<String, String> personita = {
        'nombre': 'Sergio'
    };

    Map<String, String> personita2 = capitalizarMapa(personita);

    print('Paso por referencia:');
    print(personita);
    print(personita2);

  //FUNCIONES FLECHA (LAMBDA)

  int a = 10, b = 20;
  int resultado = sumarFlecha(10, 20);
  
  List<int> listado = [1,2,3,4,5,6,6,7,8,9,10,10,1];

  // Declarando la función normalmente
  //  var nuevoListado = listado.where( (numero) {
  //    return numero > 4;
  // });

  var nuevoListado = listado.where( (n) => n > 4 );

  

  print( nuevoListado.toSet() );


}

//ARGUMENTOS 
// [] argumentos opcionales - null si no se asigna por defecto
void saludar(String name, [String message = '<Inserte el mensaje>']){
    print('Hola $name: $message ');
}

//{} Argumentos pueden ser indicados en su llamado por el nombre definido en la función en cualquier orden
void saludar2({String? nombre, String? mensaje, int veces = 1 }) {

  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}

//PASO POR VALOR
// Sólo con tipos:
// booleanos, string, numeros
String capitalizar( String texto ) {
  texto = texto.toUpperCase();
  return texto.toUpperCase();
}

//PASO POR REFERENCIA 
Map<String, String> capitalizarMapa( Map<String, String> persona ) {

  //persona = { ... persona };

  persona['nombre'] = persona['nombre']!.toUpperCase();
  return persona;
}


//FUNCIÓN FLECHA (LAMBDA)

int sumar( int x, int y ) {
  return x + y;
}

int sumarFlecha( int x, int y ) => x + y;