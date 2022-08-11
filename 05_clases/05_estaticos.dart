
class Herramientas {

  // la idea con las variables estáticas es que sean de sólo lectura
  static const List<String> listado = ['Martillo', 'Destornillador', 'Llave Inglesa', 'Alicate'];

  //Métodos estáticos 
  static void imprimirListado() => listado.forEach(print);


}

void main(List<String> args) {

  //Acceder a métodos/propiedades estáticas
  Herramientas.imprimirListado();


}