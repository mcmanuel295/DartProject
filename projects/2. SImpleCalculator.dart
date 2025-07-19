import 'dart:io';

void main(){
  stdout.writeln("WELCOME\nEnter the first number");
  String? first =  stdin.readLineSync();

  stdout.writeln("Enter the second number");
  String? second =  stdin.readLineSync();
  
  if (first!=null && second!=null) {
    double firstNum = double.parse(first);
    double secNum = double.parse(second);

    stdout.writeln("enter operation\n'+' '-' '*' '/' '%' ");
    String? op= stdin.readLineSync()?.toLowerCase();

    switch(op){
      case '+':print('${firstNum+secNum}');
      case '-':print('${firstNum-secNum}');
      case '*':print('${firstNum*secNum}');
      case '/':print('${firstNum/secNum}');
      case '%':print('${firstNum%secNum}');
      default:print("invalid operation");
    }
  }
}