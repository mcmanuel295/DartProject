 
 import 'dart:io';

void main(){

  print("Enter your name");
  String? name = stdin.readLineSync();  
  print("hi $name");



 }

  abstract class LivingThing{

  }

  class Dog extends LivingThing{

  }
  

 class Student extends LivingThing{ 
   String name;
   int age;
   
   Student(this.name, this.age);

   @override
   String toString()=> "student: $name $age";
   

}
