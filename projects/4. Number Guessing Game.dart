import 'dart:io';
import 'dart:math';

void main(){

  int random = Random().nextInt(100)+1;
  stdout.writeln("The number is between 0 and 100");
  int guess =int.parse( stdin.readLineSync() ??"");

  int numGuesses =0;

  while(guess!=random){

    if (guess>random) {
      print("Guess is high");
      guess =int.parse( stdin.readLineSync() ??"");

    } else {

      print("guess is low");
      guess =int.parse( stdin.readLineSync() ??"");
    }
    numGuesses++;
  }

  numGuesses++;

  print("congratulations!!!, you guessed the number in $numGuesses guesses");
}