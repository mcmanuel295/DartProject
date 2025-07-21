import 'dart:io';

void mains(){
  String path = "./text.txt";
  File file =File(path);
  
  int wordCount = 0;
  int sentenceCount=0;
  List<String> paragraph;
  
  if (!file.existsSync()) {
    stdout.writeln("file doesn't exist");

  } else {
    stdout.writeln("file exist\n\n");
    var text = file.readAsStringSync();

    if (text.length ==0) {
      stdout.writeln("file empty");
    }
    else{

      paragraph = text.split("\n");

      for (var paragraph in paragraph) {
        
        List<String> sentence = paragraph.split(r'[.!?]+');
        sentenceCount+=sentence.length;

        for (var sentence in sentence) {
          wordCount += sentence.trim().split(' ').length;
        }
      }

      print('Number of words: $wordCount');
      print('Number of sentences: $sentenceCount');
      print('Number of paragraph: ${paragraph.length+1}');
      
    }
  }


}


void main(){
  String path = "./text.txt";
  File file =File(path);
  var paragraph = file.readAsStringSync().split('\n');


  List<String> sentence = paragraph[0].split(r'[.!?]+');

  print(paragraph);
}