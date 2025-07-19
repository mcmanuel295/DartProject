import 'dart:io';

void main(){

  List<String> newList = [];
  
  stdout.writeln("WELCOME\nEnter the action: (A)dd task (D)elete task (E)dit task (V)iew tasks (C)ancel");
  String? input = stdin.readLineSync()?.toLowerCase();

  while (input!='c') {
    
    switch(input){
      case 'a': {
        stdout.writeln("Enter new task");
        input = stdin.readLineSync();
        if (input!=null) {
          newList.add(input);
        }

        stdout.writeln("\n");
        
      };



      case 'd': {
        stdout.writeln("Enter task index to be removed");
        input =  stdin.readLineSync();
        int index = int.parse(input?? "");

        newList.removeAt(index);
      
        stdout.writeln("\n");
      };
      


      case 'e':{
        stdout.writeln("Enter task index to be edit");
        input = stdin.readLineSync();

        int index = int.parse(input?? "");
        
        stdout.writeln("Enter new task");
        input = stdin.readLineSync();

        if (input!=null) {
          newList[index]= input;
        }

        stdout.writeln("\n");
      };



      case 'v': {
          print("TASKS VIEW");
        
        for (var task in newList) {
          print(task);
        }

        stdout.writeln("\n");
      };


      default: print("invalid operation");
    }

    stdout.writeln("WELCOME\nEnter the action: (A)dd task (D)elete task (E)dit task (V)iew tasks (C)ancel");
    input = stdin.readLineSync()?.toLowerCase();

  }


}