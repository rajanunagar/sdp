import 'dart:ffi';
import 'dart:math';

import 'package:lab3tutorial2/lab3tutorial2.dart' as lab3tutorial2;

// youAreWonderFul({name, people}) {
//   return "You're wonderful , $name , $people people think so";
// }
var youAreWonderFul = ({name, people = 15}) {
  return "You're wonderful , $name , $people people think so";
};
bool isPrime(int n) {
  if (n < 2) return false;
  int sqroot = sqrt(n).toInt();
  for (int i = 2; i <= sqroot; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

// int repeatTask(int times, int input, Function task) {
//   if (times <= 0) return input;
//   return task(repeatTask(times - 1, input, task));
// }
dynamic repeatTask = (int times, int input, Function task) =>
    (times == 0) ? (input) : (task(repeatTask(times - 1, input, task)));
void main(List<String> arguments) {
  print(repeatTask(4, 2, (int n) => n * n));
  // print(isPrime(4));
  // const people = ['Chris', 'Tiffani', 'Pablo'];
  // people.forEach((person) => print(youAreWonderFul(name: person)));
  print('Hello world: ${lab3tutorial2.calculate()}!');
}
