// import 'dart:html';

import 'dart:html';

import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;

void main(List<String> arguments) {
  // print('Hello world: ${lab4_tutorial1.calculate()}!');

  //Chapter 6: Classes
/*


          //Dart classes

 // Classes are like architectural blueprints that tell the system
 // how to make an object,

// Classes are a core component of object-oriented
// programming. They’re used to combine data and functions
// inside a single structure.
*/
/*
// Defining a class
// class User {
// int id = 0;
// String name = '';
// }
// this code will run perfectly
// creates a class with 2 propeties id and name

*/

/*
//Creating an object from a class

final user = User();
// this code will run perfectly
final user = new User();
// this code will run perfectly


*/
/**
 //Assigning values to properties
 user.name = 'Ray';//output: name will be Ray
 user.id = 42; //output: id will be 42
 // this code will run perfectly


// void main() {
// final user = User();
// user.name = 'Ray'; user.id
// = 42;
// }
// class User {
// int id = 0;
// String name = '';
// }

print(user);
//output:object will be printed

 // this code will run perfectly

 */
// object print
// class User {
//   int id = 0;
//   String name = '';
//   @override
//   String toString() {
//     return 'User(id: $id, name: $name)';
//   }
// }
// final user=User();
// user.id=42;
// user.name="ray";
// print(user);
// }
// //output:user(id: 42, name: Ray)
//tostring meathod

// User(id: 42, name: Ray)
//creates a object of user with name Ray and id 42.
  // this code will run perfectly

/*

//Adding methods

//Understanding object serialization

// Serialization is the process of converting a complex data
// object into a string. 
//serialization=>Object into string
//deserialization,string into object

*/

/*
//Adding a JSON serialization method

class User {
  int id = 0;
  String name = '';
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
}
final user=User();
user.name="faizan";
user.id=157;
print(user.toJson());
  // this code will run perfectly

// output
// {"id":157,"name":"faizan"}
*/
/*
//Cascade notation
final user = User();
user.name = 'Ray';
user.id = 42;
  // this code will run perfectly


final user = User()
..name = 'Ray'
..id = 42;
  // this code will run perfectly



*/
/*
//Mini-exercises
//1. Create a class called Password and give it a string
// property called value.
// class Password {
//   String value="Faizan";
//   
// }
// final pass=Password();
// pass.value="vora";
// print(pass.toString());

//Password(vora)

//2. Override the toString method of Password so that it
prints value.
class Password {
//   String value="Faizan";
//   @override
//   String toString() {
//     return 'Password($value)';
//   }
// }
// final pass=Password();
// pass.value="vora";
// print(pass.toString());



//3. Add a method to Password called isValid that returns
true only if the length of value is greater than 8.


// class Password {
//   String value=" ";
//   bool isvalid(){
//     if (value.length>8) {
//       return true;
//     }
//     else{
//       return false;
//     }
//   }
//   @override
//   String toString() {
//     return 'Password($value)';
//   }
// }
*/
/*
  //Constructors

  //Default constructor


class Address { var
value = '';
}
  // this code will run perfectly

class Address {
Address();
var value = '';
}
  // this code will run perfectly


//Custom constructors

//Long-form constructor

// User(int id, String name) {
// this.id = id;
// this.name = name;
// }
  // this code will run perfectly



class User {
User(int id, String name) {
this.id = id;
this.name = name;
}
int id = 0;
String name = '';
// ...
}

  // this code will run perfectly


// class User {
// User(int id, String name) {
// this.id = id;
// this.name = name;
// }
// int id = 0;
// String name = '';
// // ...
// }
// final user = User(42, 'Ray');
// print(user);

//output:Instance of 'User'
// // this code will run perfectly

//Short-form constructor

User(int id, String name) {
this.id = id;
this.name = name;
}
User(this.id, this.name);
// this code will run perfectly


//Named constructors
// Dart also has a second type of generative constructor called a
// named constructor,
ClassName.identifierName()

User.anonymous() { id
= 0;
name = 'anonymous';
}
// this code will run perfectly


// final anonymousUser = User.anonymous();
// print(anonymousUser);
// }
// User.anonymous() { id
// = 0;
// name = 'anonymous';
// this code will run perfectly

//Forwarding constructors

User.anonymous() : this(0, 'anonymous');
// this code will run perfectly

replace this int id = 0;
             String name = '';

with this
int id; String
name;
//it will run perfectly

final anonymousUser = User.anonymous();
*/

/*
// Optional and named parameters
MyClass([this.myProperty]);
// this code will run perfectly

MyClass({this.myProperty});
// this code will run perfectly

MyClass({required this.myProperty});
//this will make property rrequired
// this code will run perfectly

User({this.id = 0, this.name = 'anonymous'});
// this code will run perfectly
//this will set default values

// User.anonymous() : this();
// this code will run perfectly


// we can ddo it by making a object in main 
// final user = User(id: 42, name: 'Ray');
// this code will run perfectly

*/

// class User {
// // unnamed constructor
// User({this.id = 0, this.name = 'anonymous'});
// // named constructor
// User.anonymous(): this();

// int id; String
// name;
//  String toString() {
//     return 'Password(id:$id name:$name)';
//   }

// final user=User(id: 12,name: "faizan");

// print(user);
// this code will run perfectly
//output:
//Password(id:12 name:faizan)

/*
  //Initializer lists
  final vicki = User(id: 24, name: 'Vicki');
vicki.name = 'Nefarious Hacker';
print(vicki);
// this code will run perfectly

*/

/*
//Private variables
//User({this._id = 0, this._name = 'anonymous'});
//this code will gieve an error
//error:Named parameters can’t start with an _
//we have to replace this to solve the error
// User({int id = 0, String name = 'anonymous'})
// : _id = id,
// _name = name;


// User({int id = 0, String name = 'anonymous'})
// : _id = id,
// _name = name { print('User name
// is $_name');
// }
//this code will run perfectly
*/

/*

//Why aren’t the private properties private?


// final vicki = User(id: 24, name: 'Vicki');
// vicki._name = 'Nefarious Hacker';

//this code will run perfectly

*/

// final vicki = User(id: 24, name: 'Vicki');
//if we move our class this will give error
//bin/lab4_tutorial1.dart:384:15: Error: Method not found: 'User'.
// final vicki = User(id: 24, name: 'Vicki');

// vicki.name = 'Nefarious Hacker';
// print(vicki);

/*
class User {
// unnamed constructor
User({int id = 0, String name = 'anonymous'})
: assert(id >= 0), assert(name.isNotEmpty),
_id = id,
_name = name;
// named constructor 
User.anonymous(): this();

int _id; String
_name;
 String toString() {
    return 'Password(id:$id name:$name)';
  }
}

/this will run perfectly
 */

// final jb = User(id: -1, name: 'JB Lorenzo');

//this code will give error

//Error: The getter 'id' isn't defined for the class 'User'.
//  - 'User' is from 'bin/lab4_tutorial1.dart'.
// Try correcting the name to the name of an existing getter, or defining a getter or field named 'id'.
//     return 'Password(id:$id name:$name)';
//                          ^^
// bin/lab4_tutorial1.dart:426:35: Error: The getter 'name' isn't defined for the class 'User'.
//  - 'User' is from 'bin/lab4_tutorial1.dart'.
// Try correcting the name to the name of an existing getter, or defining a getter or field named 'name'.
//     return 'Password(id:$id name:$name)';

/*
  //Making properties immutable


  class User {
// unnamed constructor
User({int id = 0, String name = 'anonymous'})
: assert(id >= 0), assert(name.isNotEmpty),
_id = id,
_name = name;
// named constructor 
User.anonymous(): this();

final int _id;final String
_name;
 String toString() {
    return 'Password(id:$id name:$name)';
  }
}

//this code will give error

*/

/*

  //Making classes immutable 


  const User({int id = 0, String name = 'anonymou s'})
: assert(id >= 0),
_id = id,
_name = name;
const User.anonymous() : this();
const user = User(id: 42, name: 'Ray');
const anonymousUser = User.anonymous();
//this code will give error

 */

/*

//Factory constructors


class User {
  factory User.ray() {
return User(id: 42, name: 'Ray');
}
// unnamed constructor
User({int id = 0, String name = 'anonymous'})
: assert(id >= 0), assert(name.isNotEmpty),
_id = id,
_name = name;
// named constructor 
User.anonymous(): this();

final int _id;final String
_name;
 String toString() {
    return 'Password(id:$_id name:$_name)';
  }
}
//this code will give error


class User {
  factory User.ray() {
    return User(id: 42, name: 'Ray');
  }
// unnamed constructor
  User({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;
// named constructor
  User.anonymous() : this();

  final int _id;
  final String _name;
  String toString() {
    return 'Password(id:$_id name:$_name)';
  }

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
}
final map = {'id': 10, 'name': 'Manda'}; fi
nal manda = User.fromJson(map);


final map = {'id': 10, 'name': 'Manda'}; 
final manda = User.fromJson(map);
print(map);
print(manda);

//{id: 10, name: Manda}
// Password(id:10 name:Manda)
//this code will give error

*/



/*
//Mini-exercises

// 1. Make value a finalvariable, but not private.
// class Password {
// final String value = '';
// 
// }

2. Add a const constructor as the only way to initialize a
Password object.
class Password {
// final String value = '';
// const Password(this.value);
// }

*/

/*
//Dart objects

class MyClass {
var myProperty = 1;
}
final myObject = MyClass();
final anotherObject = myObject;
print(myObject.myProperty);
anotherObject.myProperty=3;
print(myObject.myProperty);

//this code will run perfectly
*/
// const ray = User(id: 42, name: 'Ray');
// print(ray.id); // 42
// print(ray.name); // Ray
// }
//this code will run perfectly

// class MyClass {
// var myProperty = 1;

/*

//Calculated properties
//  bool get isBigId => _id > 1000;
*/



/*
//setters

*/

// final email = Email();
// email.value = 'ray@example.com'; 
// final emailString = email.value;
// //this code will run perfectly

//after refactoring

// final email = Email();
// email.value = 'ray@example.com'; 
// final emailString = email.value;
// //this code will run perfectly
/*
//Refactoring the Email class


//refatoring user class
class User {
const User({this.id = 0, this.name = 'anonymou s'})
: assert(id >= 0);
const User.anonymous() : this(); final
String name;
final int id;
String toJson() {
return '{"id":$id,"name":"$name"}';
}
@override
String toString() {
return 'User(id: $id, name: $name)';
}
//this code will run perfectly

 */


/*
    //static members
    final value = SomeClass.myProperty;
    SomeClass.myMethod();

    //Hello, Dart!

    //Constants
// class SomeClass {
// static const myConstant = '42';
// static const _anonymousId = 0;
// static const _anonymousName = 'anonymous';
// static int myProperty = 0; static
// void myMethod() {
// print('Hello, Dart!');
}
*/
// final value = SomeClass.myProperty;
// SomeClass.myMethod();

// const User({
// this.id = _anonymousId, this.name
// = _anonymousName,
// }) : assert(id >= 0);
//this code will run perfectly

/*
  //Singleton pattern
//   class MySingleton {
// MySingleton._();
// static final MySingleton instance = MySingleton._();
// }
final mySingleton = MySingleton.instance;
//this code will run perfectly


// class MySingleton {
// MySingleton._();
// static final MySingleton _instance = MySingleton._();
// factory MySingleton() => _instance;
// }
// final mySingleton = MySingleton();

//this code will run perfectly

*/

/*
//challanges

// Challenge 1: Bert and Ernie
// Create a Student class with final firstName and lastName
// String properties and a variable grade as an int property.
// Add a constructor to the class that initializes all the
// properties. Add a method to the class that nicely formats a
// Studentfor printing. Use the class to create students bert
// and ernie with grades of 95 and 85, respectively.


class student {
  student(this.firstName,this.lastName,this.grade);
  final String firstName;
  final String lastName;
  final int grade;
  @override
  String toString(){
    return "student(firstname:$firstName,lastname:$lastName,grade:$grade)";
  }
}
final bert=student("bert", "watson", 95);
final erin=student("erin", "joe", 85);
print(bert);
print(erin);




Challenge 2: Spheres
Create a Sphere class with a const constructorthat takes a
positive length radius as a named parameter. Add getters
for the the volume and surface area but none for the radius.
Don’t use the dart:math package but store your own version
of pi as a static constant. Use your class to find the volume
and surface area of a sphere with a radius of 12.

class sphere {
  const sphere(this.radius);
  final int radius;
  static double pi=3.1415;
  double get getvolume{
    double volume=4*pi*radius*radius*radius/3;
    return volume;
  }
  double get getshpere{
    double surface=4*pi*radius*radius;
    return surface;
  }
}


const sphere1=sphere(12);
print(sphere1.getshpere);
print(sphere1.getvolume);
*/


/*
//Key points
// Classes package data and functions inside a single structure.
// Variables in a class are called fields, and public fields or getter
// methods are called properties.
// Functions in a class are called methods.
// You can customize how an object is printed by overriding
// the toString method.
// You create an object from a class by calling a constructor
// method.
// Generative constructors can be unnamed or named.
// Unnamed generative constructors have the same name as the
// class, while named generative constructors have an
// additional identifier after the class name.
// You can forward from one constructor to another by using
// the keyword this.
// Initializer lists allow you to check constructor parameters
// with assert and initialize field variables.
// Adding const to a constructor allows you to create immutable,
// canonical instances of the class.
// Factory constructors allow you to hide the implementation
// details of how you provide the class instance.

// Classes have getters and setters which you can customize
// without affecting how the object is used.
// Adding the static keyword to a property or method makes
// it belong to the class rather than the instance.
*/


}


// class User {
// // ...
// final int _id=5;
// final String _name="faizan";
// int get id => _id;
// String get name => _name;
// // ...}
// }
// class SomeClass {
// static const myConstant = '42';
// static const _anonymousId = 0;
// static const _anonymousName = 'anonymous';
// static int myProperty = 0; static
// void myMethod() {
// print('Hello, Dart!');
// }

// class User {
//   factory User.ray() {
//     return User(id: 42, name: 'Ray');
//   }
// // unnamed constructor
//   User({int id = 0, String name = 'anonymous'})
//       : assert(id >= 0),
//         assert(name.isNotEmpty),
//         _id = id,
//         _name = name;
// // named constructor
//   User.anonymous() : this();

//   final int _id;
//   final String _name;
//   String toString() {
//     return 'Password(id:$_id name:$_name)';
//   }

//   factory User.fromJson(Map<String, Object> json) {
//     final userId = json['id'] as int;
//     final userName = json['name'] as String;
//     return User(id: userId, name: userName);
//   }
// }

// class Email {
// Email(this.value); 
// final value;
// }
