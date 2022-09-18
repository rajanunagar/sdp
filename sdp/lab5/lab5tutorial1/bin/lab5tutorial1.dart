import 'package:lab4_tutorial2/lab4_tutorial2.dart' as lab4_tutorial2;

void main(List<String> arguments) {
  // print('Hello world: ${lab4_tutorial2.calculate()}!');
/*
//Null overview
//What null means
// Null means “no value” or “absence of a value”.
int postalCode = 12345;
int postalCode = -1;
int postalCode = null;
//this code will  value is  null
//error :A value of type 'Null' can't be assigned to a va
riable of type 'int'.
*/

/*
//The problem with null
print(isPositive(3)); // true
print(isPositive(-1)); //false
bool isPositive(int anInteger) {
return !anInteger.isNegative;
}
// print(isPositive(null));
//this code will give the error
// NoSuchMethodError: The getter 'isNegative' was c
// alled on null.
*/
/*
//Nullable vs. non-nullable types
//Non-nullable types
int myInt = 1;
double myDouble = 3.14159265; bool
myBool = true;
String myString = 'Hello, Dart!';
// int postalCode = null; // error
// Error: The value 'null' can't be assigned to a variable of type 'int' because 'int' is not nullable.
//Nullable types
// int? myInt = null; 
// double?myDouble = null; 
// bool?myBool = null; 
// String?myString = null; 
// User?myUser = null;
int? age;
double? height;
String? message;
print(age); print(height);
print(message);
//output
null
null
null
*/
/*
//mini exercises
1. Create a String? variable called profession, but don’t
give it a value. Then you’ll have profession null. :]
 string?profession;
 print(profession);
 //output:null
2. Give profession a value of “basketball player”.
  profession="baksetball";
  print(profession);
 //output:baksetball
3. Write the following line and then hover your cursor over
the variable name. What type does Dart infer iLove to
be?
 const ilove="dart";
 //hover type string
*/

/*
// Handling nullable types
String? name;
print(name.length);
//Error: Property 'length' cannot be accessed on 'String?' because it is potentially null. 
Try accessing using ?. instead.
String? name;
name = 'Ray';
print(name.length);
//3
*/
/*Flow analysis
bool isPositive(int? anInteger) {
if (anInteger == null) {
return false;
}
return !anInteger.isNegative;
}
*/
/*
// Null-aware operators
String? message;
final text = message ?? 'Error';
String text;
if (message == null) {
text = 'Error';
} else {
text = message;
}
// double? fontSize;
// fontSize = fontSize ?? 20.0;
// int? age;
// print(age?.isNegative);
// print(age?.toDouble());
//null
*/
/*
//Null assertion operator (!)
// String myNullableString="Faixa"; 
// String nonNullableString = myNullableString!;
// bool? isBeautiful(String? item) { if
// (item == 'flower') {
// return true;
// } else if (item == 'garbage') {
// return false;
// }
// return null;
// }
// bool flowerIsBeautiful = isBeautiful('flower');
//this code will geive error
// Error: A value of type 'bool?' can't be assigned to a variable of type 'bool' because 'bool?' is nullable and 'bool' isn't
// bool? isBeautiful(String? item) { if
// (item == 'flower') {
// return true;
// } else if (item == 'garbage') {
// return false;
// }
// return null;
// }
// bool flowerIsBeautiful = isBeautiful('flower')!;
// bool? isBeautiful(String? item) { if
// (item == 'flower') {
// return true;
// } else if (item == 'garbage') {
// return false;
// }
// return null;
// }
// bool flowerIsBeautiful = isBeautiful('flower') as
// bool;
// */

/*
  //Null-aware cascade operator (?..)
//   class User {
// String? name; int?
// id;
// }
//this will create a class in which we can not nullable object
//   User user = User()
// ..name = 'Ray'
// ..id = 42;
// User?user;
// user
// ?..name = 'Ray'
// ..id = 42;
//if object is null this will run perfectly
// String? lengthString = user?.name?.length.toString();
//Error: Variables must be declared using the keywords 'const', 'final', 'var' or a type name
*/
/*
 //Null-aware index operator (?[])
 // List<int>? myList = [1, 2, 3];
// myList = null;
// int? myItem = myList?[2];
// print(myItem);
//null
*/

/*
//Initializing non-nullable fields
// class User {
// String name= 'anonymous';
// }
*/

/*
//Using initializing formals
class User {
  User(String name) : _name = name;
  String _name;
}
*/

/*
  //Using default parameter values
class User {
  User([this.name = 'anonymous']);
  String name;
}
}
 //or else we can do it like this
class User {
User({this.name = 'anonymous'}); String
name;
}
*/

/*
  //Required named parameters
  class User {
User({required this.name}); String
name;
}
*/
/*
  //Nullable instance variables
  final user = User(name: null);
  //this will give us error
  // The argument type 'Null' can't be assigned to th e
// parameter type 'String'
class User {
User({this.name}); String?
name;
}
*/
/*
  //No promotion for non-local variables
  bool isLong(String? text) {
  if (text == null) {
    return false;
  }
  return text.length > 100;
}
  class TextWidget {
  String? text;
  bool isLong() {
    if (text == null) {
      return false;
    }
    return text.length > 100; // error
  }
}
//error:The property 'length' can't be unconditionally a
ccessed because the receiver can be 'null'.
bool isLong() {
if (text == null) {
return false;
}
return text!.length > 100;
}
class TextWidget {
String? text;
bool isLong() {
final text = this.text; // shadowing if
(text == null) {
return false;
}
return text.length > 100;
}
}
*/
/*
  //The late keyword
  class User {
User(this.name);
final String name;
final int _secretNumber = _calculateSecret();
int _calculateSecret() { return
name.length + 42;
}}
//Error: Can't access 'this' in a field initializer to read '_calculateSecret'.
class User {
User(this.name);
final String name;
late final int _secretNumber = _calculateSecret();
int _calculateSecret() { return
name.length + 42;
}}
// class User {
// late String name;
// }
// final user = User();
// print(user.name);
//Field 'name' has not been initialized.
*/
/*
  //Benefits of being lazy
class SomeClass {
  late String? value = doHeavyCalculation();
  String? doHeavyCalculation() {
// do heavy calculation
  }
}
*/
/*
  //Challenges
Challenge 1: Random nothings
Write a function thatrandomly returns 42 or null. Assign
the return value of the function to a variable named result
that will never be null. Give result a default of 0 if the
function returns null.
int?random_nothing(){
  dynamic value=[42,null];
  var random=new Random();
  int index=random.nextInt(2);
  return value[index];
}
void main(){
  int result=random_nothing()?3:0;
print(result);
}
Challenge 2: Naming customs
People around the world have different customs for giving
names to children. It would be difficult to create a data class
to accurately represent them all, but try it like this:
Create a class called Name with givenName and surname
properties.
Some people write their surname last and some write it first.
Add a Boolean property called surnameIsFirst to keep track
of this.
Not everyone in the world has a surname.
Add a toString method that prints the full name.
class Name {
  Name({required this.givenName,this.surname,surnameIsFirst=false});
  String givenName;
  String?surname;
  bool surnameIsFirst=false;
  @override
  String toString(){
    String name;
    if (surnameIsFirst==true) {
      if (surname!=null) {
        name=surname!+" "+givenName;
      }
      
    }
    else{
      if (surname!=null) {
        name=givenName+" "+surname!;
      }
      else{
        name=givenName;
      }
      return "Name($name)";
    }
  }
}
void main(){
Name p1=Name(givenName: "rajan");
Name p2=Name(givenName: "rajan",surname: "unagar");
Name p3=Name(givenName: "rajan",surnameIsFirst: true,surname: "unagar");
print(p1);
print(p2);
print(p3);
}
*/
}

// class SomeClass {
//   late String? value = doHeavyCalculation();
//   String? doHeavyCalculation() {
// // do heavy calculation
//   }
// }
// // class User {
// //   User(String name) : _name = name;
// //   String _name;
// // }
// // c

// class Name {
//   Name({required this.givenName,this.surname,surnameIsFirst=false});
//   String givenName;
//   String?surname;
//   bool surnameIsFirst=false;

//   @override
//   String toString(){
//     String name;
//     if (surnameIsFirst==true) {
//       if (surname!=null) {
//         name=surname!+" "+givenName;
//       }
      
//     }import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;

void main(List<String> arguments) {
  // print('Hello world: ${lab5_tutorial1.calculate()}!');

  //some  Basic list operations

/*
 // Creating a list => using '[]'
 var desserts =['cookies', 'cupcakes', 'donuts', 'pie'];
 desserts = [];  
 
 
 // another syntex => using final/var
 var snacks2 = <String>[];
*/

/*
 // Printing lists
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
 print(desserts);
 */

/*
  // Mutable and immutable list
  var arr = <int>[]; //mutable => using num,var
  //arr[1] = 12;
  arr.add(13);
  print(arr);
  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pie'
  ]; //immutable => final
  desserts.remove('cupcakes'); // OK
  desserts.add('ice cream');
  // Creating deeply immutable list => using const keyword
  //   That is, every element of the list must also be a compile-time
  // constant.
  const desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts2.add('brownie'); // not allowed
 
  */

/*
  
  final modifiableList = [
    DateTime.now(),
    DateTime.now()
  ]; //DateTime.now()returns the date and time when it’s called.
  final unmodifiableList = List.unmodifiable(modifiableList);
  // spread operator(...)
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);
  */

/*
  // Mini-exercise
  // 1)
  var months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
  // 2)
  final immutableMonths = [...months];
  print(immutableMonths);
  // 3)
  final newMonths = [for (var month in months) month.toUpperCase()];
  print(newMonths);
  */

  // Sets => not allowed duplication

/*
  // Creating a set
  final Set<int> someSet = {};
  final someSet2 = <int>{};
  final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet);  //{1, 3, 2, 7, 5, 6}
  */

  // Operations on a set

/*
  // on single element
  // Checking the contents
  final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(99)); // false
  // Adding single elements
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet); //{42, 2112}
  
  */

/*
  // Map => key->value pair, keys of map should be unique
  final Map<String, int> emptyMap = {};
  final emptySomething = {}; //Map<dynamic, dynamic>
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(inventory);
  print(digitToWord);
  */

/*
  // Mini-exercise
  // 1)
  final Map<String, String> info = {
    'name': 'rajan',
    'profession': 'student',
    'country': 'India',
    'city': 'Nadiad'
  };
  print(info);
  // 2)
  info['city'] = 'Toronto';
  info['country'] = 'Canada';
  print(info);
  // 3)
  for (var entry in info.entries) {
    print('${entry.key} => ${entry.value}');
  }
  */

/*
  // Higher order methods
  // Mapping over a collection
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);
  print(squares.toList());
  
  // Combining higher order methods
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
  .where((dessert) => dessert.length > 5)
  .map((dessert) => dessert.toUpperCase());
  */

/*
  // Mini-exercise
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  // 1)
  scores.sort();
  print('lowest: ${scores.first} , highest: ${scores.last}');
  // 2)
  final BGrades = scores.where((element) => element >= 80 && element <= 90);
  print(BGrades);
  // lowest: 32 , highest: 93
  // (82, 88, 89)
  */

  // Challenges
  // ch:1) : A unique request
  String paragraph = "Hello World,Hello everyone";
  final words = uniqueRequest(paragraph);
  print(words);

  // ch:2) Counting on you
  String paragraph2 = 'HelloWorld';
  print(countCharacter(paragraph2));

  // ch:3) Mapping users
  User user1 = User(1, 'Bob');
  User user2 = User(2, 'Ray');
  User user3 = User(3, 'Keta');
  List<User> users = [user1, user2, user3];

  print(listToMap(users));
}

Set<String> uniqueRequest(String para) {
  Set<String> uchars = {};
  for (int i = 0; i < para.length; i++) uchars.add(para[i]);

  return uchars;
}

Map<String, int> countCharacter(String para) {
  Map<String, int> chars = {};
  for (int i = 0; i < para.length; i++) {
    int count = chars[para[i]] ?? 0;
    chars[para[i]] = count + 1;
  }

  return chars;
}

class User {
  User(this.id, this.name);
  int id;
  String name;
}

Map<int, String> listToMap(var users) {
  var usersMap = <int, String>{};
  for (var user in users) {
    usersMap[user.id] = user.name;
  }
  return usersMap;
}

//     else{
//       if (surname!=null) {
//         name=givenName+" "+surname!;
//       }
//       else{
//         name=givenName;
//       }
//       return "Name($name)";
//     }
//   }
// }
