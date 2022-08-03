

main(){
    //Operadores de asiganción
    int a = 10;

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