import 'user.dart';
class User {
// unnamed constructor
User({this.id = 0, this.name = 'anonymous'});
// named constructor 
User.anonymous(): this();

int id; String
name;
 String toString() {
    return 'Password(id:$id name:$name)';
  }
}


// class Password {
// final String value = '';
// const Password(this.value);
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