//Herencia en dart

class Vehiculo{

  bool estaEncendido = false;

  void encender(){
    estaEncendido = true;
    print('Desde la Class Vehiculo');
    print('Vehículo encendido');
  }

  void apagar(){
    estaEncendido = false;
    print('Vehículo apagado');
  }
}


class Carro extends Vehiculo{

  int kilometraje = 0;

  @override
  void encender(){
    super.encender();
    print('Endendido desde la class Carro');
  }

}



void main(List<String> args) {
  
  final ford = new Carro();
  ford.encender();
  ford.apagar();


}