import 'dart:io';

void main(){
  print("welcome");
  var tasks = <String>[];

  String path = Directory.current.path;

  var file = File(path+"/tasks.txt");

  if (file.existsSync()) {
    print("file exist");
    tasks = file.readAsLinesSync();
  }
  else{

    print("file doesn't exist");
    try {
      file.createSync(); 
      print("File created");
  } catch (e) {
    print("Error creating file: $e");
  }
  }

  print(tasks);

}