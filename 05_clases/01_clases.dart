import 'clases/mi_servicio.dart';
import 'clases/person.dart';

main(){
  
 final persona = new Person('Sergio', 32); //new es opcional
  //operador de cascada
  //persona..name = 'Sergio'
  //       ..age = 32;

  // instanciación constructor con nombre
  final persona2 = new Person.persona40('Jimmy');

  persona.bio = 'Cambié el valor!';

  print(persona);
  print(persona.bio);
  print(persona2);


  //Patrón singleton
  print('Patrón singleton');

  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'http://spotify1';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'http://spotify2';

  print(spotifyService1 == spotifyService2);
  print(spotifyService1.url);
  print(spotifyService2.url);



}

