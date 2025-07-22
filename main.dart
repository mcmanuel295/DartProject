import 'dart:io';

void main(){
  String pass= 'shoulder';

  for (var i = 0; i < pass.length; i++) {
    print( pass[i]);
  }
  pass+='s';

  print( pass);
}