main(){


    var a   = 10; 
    // Definición de variables que no cambiarán después de su definición
    final b = 20; // Una vez inicializada no se puede modificar su valor
    const c = 30; // Igual que final, pero se utiliza para definir una constante a nivel de compilación
    late final e; // Una vez inicializada no se puede modificar su valor

    //c = 50; No se puede reasignar porque es final
    final double d =40;
    //Con var no se puede

    final personFinal = ['Sergio', 'Darlyn']; //Sólo se pueden agregar mediante sus métodos
    const personnConst =['Sergio', 'Darlyn']; //No se pueden agregar más elementos
    List<String> personnConst2 = const['Sergio', 'Darlyn']; // otra forma de declarar


    personFinal.add('Bebé Barrigas');
    // personnConst.add('Bebé Barrigas'); Error en ejecución
  
    print(personFinal);

    personFinal[0] = "Andrés";

    print(personFinal);

     final personFinal2 = ['Andrés', 'Andrea']; 

     // personFinal = personFinal2;  generará error 
     // Una variable declarada como final puede recibir un valor una sola vez y 
     //ese valor no se puede cambiar después de asignarlo. 
     //Sin embargo, esto no significa que la lista en sí sea inmutable. 
     //Puedes modificar la lista agregando o eliminando elementos, pero no puedes 
     //asignar una lista completamente nueva a la variable final.


}