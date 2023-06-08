

main(){

    //Números Declaración
    int a = 10;
    a = 20;
    a = 10;
    //no es necesario usar var 
    //Si se usa, no se debe indicar el tipo de dato, dart lo infiere
    // sino se usa var si se debe indicar el tipo de dato
    var  b = 20.0; //infiere
    //int x,y,z;
    int r = 10, y=20, z=30;
    print("Números en Dart");
    print(a);

    int? c; // declaración de valores nulos
    print(c);

    //Strings
    var name = 'Tony'; //Se recomienda usar esta comilla
    String lastName = "O'connor"; // O'connor -> comillas dobles escapa '
    String fullName = "$name $lastName";
   
    //String multilinea
    String multiline = '''
    Hola
    Mundo $fullName''';

    // (Uso del Null Safety)
    //String nulo; -> dará error en ejecución
    // String nulo = null, -> no deja, es obligatorio darle un valor así:
    String? nulo = null; // o string? nulo, No da error en ejecución 
     String? nulo1; 
    late String nulo2;
    nulo2 = 'Hola'; //El valor se asigna después

    print("String en Dart");
    print(multiline);
    print(lastName);
    print("Null Safety:");
    print(nulo1);

 
    //dynamic
    var isActive; // No tiene forma de inferir 
    // dynamic = cualquier tipo de dato, como any
    
    //Booleans

    var active = true;
    bool active2 = false;
    bool? run; // valor por defecto null
    active = !active; //niega el valor asignado
    print("Boolenos en Dart");
    print(active);


    //Arrays - Listas 

    var personajes = ['Superman', 'Batman', 101]; 

    List<String> onlyString = ['Superman', 'Batman'];

    personajes.addAll(['Mujer Maravilla', 'Flash']);

    //Operador en cascada
    personajes..add('Robin')
              ..add('Acuaman')
              ..add('Batman');//Admite valores repetidos

    print("Listas en Dart");
    print(personajes);

    //Sets - Listas que NO admite valores duplicados
    Set<String> villanos = {'Lex', 'Doom', 'Red Skull'};
    villanos.add('Lex');

    print("Sets en Dart");
    print(villanos);

    //Conversión de list a set para eliminar valores duplicados
    personajes.addAll(['Mujer Maravilla', 'Flash']);
    print("Lista con duplicados:");
    print(personajes);

    print("Lista sin duplicados:");
    print(personajes.toSet());


    //Maps

    var ironman ={
        'nombre' : 'Tony Stark',
        'poder' : 'Inteligencia y dinero'
    }; //infiere 

    Map<String,String> superman ={
        'nombre' : 'Clark Kent',
        'poder' : 'Volar y super fuerza'
    }; //String clave, String valor

    Map<dynamic,dynamic> mujerMaravilla ={
        'nombre' : 'Diana de Temiscira',
        10 : 'Nivel de Energía',
        'activa' : false,
    }; //Admite cualquier tipo de dato en clave, valor

    Map<String,dynamic> captian = new Map(); //crea un mapa vacio

    print(captian);

    captian.addAll({'nombre':'Steve', 'poder':'Soportar suero sin morir'});

     print("Maps en Dart");
     print(ironman);
     print(mujerMaravilla);
     print(mujerMaravilla[10]);
     print(captian);



}