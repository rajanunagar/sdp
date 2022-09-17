import 'package:lab3tutorial1/lab3tutorial1.dart' as lab3tutorial1;
import "dart:math";

void main(List<String> arguments) {
  /*
  num a = 10;
  a=18.5;
  // a="hi";
  
  print(a);

  num b;
  b=12.5;
  b=18;
  // b="hello";

  b=a;
  print(b);



  */

  /*
  var a = 10;
  // a=18.5;
  // a="hi";
  
  print(a);
  var b;
  b=12.5;
  b=18;
  b="hello";

  // b=a;
  print(b);

  // a=b;
  b=5;
  a=b;
  print(a);
  */

  /*
  //loops
  //while looop
  int i=10;
  while(i-- > 0){
    print("i : ${i}");
  }
  while(true){
    i++;
    if(i>10) break;
    print(" now i  : ${i}");
  }

  // do while loop
  do{
    i--;
    print("do while i : ${i}");
  }while(i>0);

  do{
    i++;
    print("break in do while : ${i}");
    if(i>10) break;
  }while(true);
  */

  /*
  final random=Random();
  // print("random : ${random.nextInt(10)} ${random.nextInt(random.nextInt(10))}");
  while(random.nextInt(10) != 2){
    print("not a 2");
  }
  print("now 2");
  */

  // /*
  for (int i = 0; i < 5; i++) {
    print(" for i : ${i}");
    if (i < 3)
      continue;
    else
      break;
  }
  // for in :
  dynamic mystr;
  mystr = "dart is nice";
  // for(var codepoint in mystr){}//error mystr is not iterable
  print(mystr.runes);
  for (var char in mystr.runes) {
    print(String.fromCharCode(char));
  }
  //for each
  const nums = [1, 2, 3];
  nums.forEach((element) {
    print(element + 1);
  });

  //min-ex-1 :
  int counter = 0;
  while (counter < 10) {
    print("counter is ${counter}");
    counter++;
  }
  // min-ex-2 :
  for (var i = 1; i <= 10; i++) {
    print("${i}*${i} = : ${i * i}");
  }
  // min-ex-3:
  const numbers = [1, 2, 4, 7];
  for (var nm in numbers) {
    print("number : ${sqrt(nm)}");
  }
  // min-ex-4:
  numbers.forEach((element) {
    print(sqrt(element));
  });

  // challange-1
  const firstName = "Bob";
  if (firstName == "Bob") {
    const lastName = "Smith";
  } else {
    const lastName = "Wenderlich";
  }
  // lastName is not accessible outside if else, and lastName should not be constant

  // challenge : 2
  print(true && true && false || false);
  print((true && 1 != 2) || (4 > 3 && (100 < 1)));

  //challenge 3 :
  //NEXT POWER OF TWO
  var number1 = 11;
  double log2 = log(number1) / log(2);
  int exp = log2.ceil();
  int next_pow_2 = pow(2, exp).toInt();
  print("next_pow_2 : ${next_pow_2}");

  //challenge 4:
  // FIBONACCI
  int n = 4;
  var fib = [0, 1];
  int limit = fib.length;
  num ans;
  if (n < limit) {
    ans = fib[n];
  } else {
    while (fib.length != n + 1) {
      fib.add(fib[fib.length - 1] + fib[fib.length - 2]);
    }
    ans = fib[n];
  }
  print("ans : ${ans}");
// challenge : 5 : how many times
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }
  print(sum);
  // chalenge 6 : the final countedown
  int i = 10;
  while (i >= 0) {
    print(i);
    i--;
  }
  // challenge : 7 : print a sequence
  i = 0;
  for (i = 0; i <= 10; i++) {
    print(i / 10);
  }
  // */

  print('Hello world: ${lab3tutorial1.calculate()}!');
}
