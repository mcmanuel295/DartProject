import 'dart:io';
import 'dart:math';

void main(){

  stdout.writeln('input the lenght of password');
  int lenght = int.parse( stdin.readLineSync()?? "");
  String characters = '';

  String password='' ;

  stdout.writeln("possible character \n1:Alphabet password 2: Alphanumeric password 3: numeric password");
  int choice = int.parse(stdin.readLineSync() ??"");

  while(choice<1 || choice>3){
    stdout.writeln("Invalid input/ retry possible character \n1:Alphabet password 2: Alphanumeric password 3: numeric password");
    choice = int.parse(stdin.readLineSync() ??"");
  }

  switch(choice){
    case 1:{
      characters ='abcdefghijklmnopqrstuvwxyz';

      for (var i = 0; i < lenght; i++) {
        password+= characters[Random.secure().nextInt(characters.length)];
      }

    };

    case 2:{
      characters ='abcdefghijklmnopqrstuvwxyz1234567890';

      for (var i = 0; i < lenght; i++) {
        password+= characters[Random.secure().nextInt(characters.length)];
      }

    };


    case 3:{
      characters ='1234567890';

      for (var i = 0; i < lenght; i++) {
        password+= characters[Random.secure().nextInt(characters.length)];
      }

    };
  }

  print(password);
  
}