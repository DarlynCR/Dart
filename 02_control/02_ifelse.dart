import 'dart:io';

main(){

    stdout.writeln('Cual es tu edad?');
    int? age = int.parse(stdin.readLineSync() ?? "0");
  
    //askAge(age);
    askAge2(age);
    

    
    

}
// if - else
void askAge(int? age){

 if (age != null){
       if(age >= 18){
        stdout.writeln('Eres mayor de edad');
       }else{
        stdout.writeln('No eres mayor de edad');}
    }
}

// if - else if
void askAge2(int? age){

  if (age != null){

      if (age < 18){
          stdout.writeln('Menor de edad');
      }else if(age >= 18 && age <= 20){
          stdout.writeln('Mayor de edad');
      }else{
          stdout.writeln('Ciudadano');
      }
    
      //  if(age >= 21){
      //   stdout.writeln('Ciudadano');
      //  }else if(age >= 18){
      //   stdout.writeln('Mayor de edad');
      //  }else{
      //   stdout.writeln('Menor de edad');
      //  }
    }
}

