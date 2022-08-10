

import 'dart:collection';



main(){

  // Útil cuando se tiene una secuencia de valores 
  // donde se tenga que procesar algo de manera consecutiva
  // parecido al for 

  Queue<int> cola = new Queue();
  cola.addAll([10,20,30,40,50]);

  Iterator i = cola.iterator; 

  while(i.moveNext()){
    print(i.current);
  }
}