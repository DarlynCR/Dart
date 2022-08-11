//Patrón singleton

class MiServicio{

  //Propiedades
  String url = 'http://abc';
  String key = 'ABC123';


  //2. Paso.-> Crear una propiedad estática privada 
  // Es final porque se puede modificar por medio de sus métodos
  //Esta propiedad es la que va a mantener en memoria la instancia de mi clase
  static final MiServicio _singleton = new MiServicio._internal();

  //3.Paso ->Crear un constructor factory que retorne la instancia del singleton
  //Cuando se instancie siempre apuntará al mismo espacio de memoria
  factory MiServicio(){
    return _singleton;
  }
  //1. Paso -> Crear un constructor privado 
  // Con el cual se generará la instancia en la propiedad privada
  MiServicio._internal();
}