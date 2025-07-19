
import 'dart:io';

void main(){
  print("Welcome \nEnter the temperature value");

  try {
    String? input = stdin.readLineSync();

    if (input!= null) {
      double temp = double.parse(input);
  
      stdout.writeln("Convert to :\n1 : Fahrenheit \n2 : Celsius");

      String? read = (stdin.readLineSync());
      var choice = int.parse(read ??"");
    
      while (choice !=1 && choice !=2) {

        stdout.writeln("Invalid input\n enter again") ;
        read = stdin.readLineSync();
        choice = int.parse(read ??"");

      }

      if (choice ==1) {
        print( toFahrenheit(value: temp));
      }
      else{
        print(toCelsius(value: temp));
      }

    }
    else {
      print("value of read is null");
    }


  } 
  on FormatException catch (f) {
    print(f);
  }
  on StdinException catch(e){
    print(e);
  } 
}

double toCelsius({required double value}){
  return (value - 32) * (5/9);
}

double toFahrenheit({required double value}){
  return (((9*value)/5) + 32) ;
}




