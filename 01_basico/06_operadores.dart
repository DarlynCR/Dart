

main(){
    //Operadores de asiganción
    int a = 10;
    int? b;
    //b ??= 20; //si es nullo asignar el valo tal
    int c = b ?? a; // asigne b, si b es null asigne a
    print('b: $b');
    print('c: $c');

    //Elvis Operator 
    String resp = a > 25 ? 'a es mayor que 25' : 'a es menor que 25';
    print(resp);
    //Valores relacionales - retornan valor booleano
    // > Mayor que - < menor que - != - == - <= - >=

    String name = 'Sergio';
    String name2 = 'Darlyn';
    bool isIqual = name == name2;

    print('Los nombres son iguales:  $isIqual');
    print(name != name2);


    //Operador de tipo
    int i = 10; 
    String j = '10';

    print(i is int);
    print(j is! int); //J no es int


}