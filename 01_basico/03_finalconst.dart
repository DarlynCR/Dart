main(){


    var a   = 10; 
    // Definición de variables que no cambiarán después de su definición
    final b = 20; // Es más ligera en memoria
    const c = 30; //Crea el espacio de memoria en tiempo de compilación

    final double d =40;
    //Con var no se puede

    final personFinal = ['Sergio', 'Darlyn']; //Sólo se pueden agregar mediante sus métodos
    const personnConst =['Sergio', 'Darlyn']; //No se pueden agregar más elementos
    List<String> personnConst2 = const['Sergio', 'Darlyn']; 


    personFinal.add('Bebé Barrigas');

    print(personFinal);


}