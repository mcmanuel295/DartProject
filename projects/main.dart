 
 import 'dart:io';

void main(){

  int value =4 ;

  if(value !=4 || !value.isEven){
    print("not four or even");

  }
  else{
    print("4");
  }



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
