import 'dart:io';

void main(){
  String path = "./text2.txt";
  File file =File(path);
  
  int wordCount = 0;
  int sentenceCount=0;
  List<String> paragraphs;
  
  if (!file.existsSync()) {
    stdout.writeln("file doesn't exist");

  } 
  else {
    stdout.writeln("file exist\n\n");
    var text = file.readAsStringSync();

    if (text.length ==0) {
      stdout.writeln("file empty");
    }
    else{

      paragraphs = text.split("\n");
      for (var paragraph in paragraphs) {
       
        List<String> sentence = paragraph.split(RegExp(r'[.!?]+'));
        sentence.removeAt(sentence.length-1) ;

        sentenceCount+=sentence.length;

        for (var sentence in sentence) {
          wordCount += sentence.trim().split(' ').length;
        }
      }

      print('Number of words: $wordCount');
      print('Number of sentences: $sentenceCount');
      print('Number of paragraph: ${paragraphs.length}');
      
    }
  }

}
