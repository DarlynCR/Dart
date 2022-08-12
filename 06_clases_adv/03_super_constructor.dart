
class Persona{

  String? nombre;
  int? edad;

  Persona(this.nombre, this.edad);

  Persona.edad40(this.edad){
    print('Constructor por nombre de superclase');
  }

  void imprimirPersona() => print('Nombre: $nombre, Edad: $edad');

}


class Cliente extends Persona{

  String? direccion;
  List ordenes = [];

  // super constructor
  Cliente(int edad, String nombre):super(nombre, edad);

  //invocar constructor supero con nombre
  Cliente.edad40(int edad): super.edad40(edad){
    print('Constructor de subclase por nombre');
  }
}


void main(List<String> args) {


  final cliente = new Cliente(32, 'Sergio');
  cliente.imprimirPersona();

  final cliente2 = new Cliente.edad40(40);
  cliente2.imprimirPersona();

}