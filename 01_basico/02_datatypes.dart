

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

    int? c;
    print(c);
    //Strings
    var name = 'Tony'; //Se recomienda usar esta comilla
    String name2 = "O'connor"; // O'connor -> comillas dobles escapa '
    //String multilinea

    String multiline = '''
    Hola
    Mundo''';

    //String nulo; -> dará error en ejecución
    // String nulo = null, -> no deja, es obligatorio darle un valor así:
    String? nulo = null; // o string? nulo, No da error en ejecución
    late String nulo1;
    nulo1 = 'Hola'; //El valor se asigna después

    print("String en Dart");
    print(multiline);
    print(name2);
    
    //Booleans

    var active = true;
    bool active2 = false;
    bool? run; // valor por defecto null
    active = !active; //niega el valor asignado
    print("Boolenos en Dart");
    print(active);


    //Arrays

    var personajes = ['Superman', 'Batman', 101]; 

    List<String> onlyString = ['Superman', 'Batman'];

    personajes.addAll(['Mujer Maravilla', 'Flash']);

    //Operador en cascada
    personajes..add('Robin')
              ..add('Acuaman')
              ..add('Batman');//Admite valores repetidos

    print("Listas en Dart");
    print(personajes);

    //Sets

    Set<String> villanos ={'Lex', 'Doom', 'Red Skull'};
    villanos.add('Lex');//No admite valores duplicados

    print("Sets en Dart");
    print(villanos);


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

    Map<String,dynamic> captian = new Map();

    captian.addAll({'nombre':'Steve', 'poder':'Soportar suero sin morir'});

     print("Maps en Dart");
     print(ironman);
     print(mujerMaravilla);
     print(mujerMaravilla[10]);
     print(captian);



}