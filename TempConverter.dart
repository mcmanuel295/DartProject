
import 'dart:io';

void main(){

  print("Welcome \nEnter the teperature value");
  String? read = (stdin.readLineSync());

  if (read != null) {
    try {
      double temp = double.parse(read);
      print("You entered: $temp");
      
    } on FormatException {
      print("Invalid input. Please enter a valid number.");
    }
  } else {
    print("No input received.");
  }
}





