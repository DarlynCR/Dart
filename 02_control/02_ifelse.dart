import 'dart:io';

main(){

    stdout.writeln('Cual es tu edad?');
    String? age = stdin.readLineSync();
  
    askAge(age);
    askAge2(age);
    

    
    

}
// if - else
void askAge(String? age){

 if (age != null){
       if(int.parse(age) >= 18){
        stdout.writeln('Eres mayor de edad');
       }else{
        stdout.writeln('No eres mayor de edad');}
    }
}

// if - else if
void askAge2(String? age){

  if (age != null){
       if(int.parse(age) >= 21){
        stdout.writeln('Ciudadano');
       }else if(int.parse(age) >= 18){
        stdout.writeln('Mayor de edad');
       }else{
        stdout.writeln('Menor de edad');
       }
    }
}

