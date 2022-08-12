

//Clases abstractas en dart

import '01_extends.dart';

abstract class Vehiculo{

  bool _estaEncendido = false;
  // No se puede instanciar, pero se puede invocar desde las subclases
  Vehiculo(){
    print('constructor de clase abstracta');
  }
  void encender(){
    _estaEncendido = true;
    print('Clase abstracta vehículo');
    print('Vehículo encendido');
  }

  void apagar(){
    _estaEncendido = false;
    print('Vehículo apagado');
  }

  //Sin implementación
  void revisarMotor();
}


class Carro extends Vehiculo{

  int kilometraje = 0;

  Carro():super(){
    print('constructor subclase carro');
  }
  
  @override
  void revisarMotor() {
    print('Motor de carro revisado');
  }

}

class Camioneta extends Vehiculo{

  String tipo = ' ';

  void cambiarLLantas(){
    print('Cambiar llantas camioneta');
  }

  @override
  void revisarMotor() {
    print('Motor de camioneta revisado');
  }

  @override
  void encender() {
    super.encender();
    print('Camionera encendida desde la clase camioneta');
  }

}



void main(List<String> args) {
  
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();


  final camioneta = new Camioneta();
  camioneta.tipo = '4X4';
  camioneta.encender();
  camioneta.apagar();
  camioneta.cambiarLLantas();
  camioneta.revisarMotor();



 



}