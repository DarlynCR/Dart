
class Person{
  //Campos y propiedades
  String? name;
  int? age;
  String? profesion;
  String _bio = 'Esta es un apropiedad privada';

  // Get y Sets

  String get bio => _bio.toUpperCase();

  set bio (String bio) => _bio = bio;
  //Constructores

  //básico - con argumentos opcionales
  Person( this.name, this.age, [this.profesion = 'No registra profesión']);

  //Constructor con nombre - uso de argumentos opcionales y por nombre
  Person.persona40(this.name, {this.profesion = 'No registra profesión'}){
    this.age = 40;
    print('Constructor con nombre');
  }
  //Métodos
  @override 
  String toString() => 'Nombre: $name, Edad: $age, Profesión: $profesion, Bio: $_bio.';
  



}