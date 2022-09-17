import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;
Set<String> returnUniqueWords(String para) {
  var temp = para.replaceAll('.', ' ');
  temp = temp.replaceAll(',', ' ');
  var lists = temp.split(" ").toList();
  lists.sort((l1, l2) => l1.length.compareTo(l2.length));
  print(lists);
  var sets = lists.toSet();
  print(sets);
  return sets;
  
}

Map<String, int> returnCountWords(String para) {
  var temp = para.replaceAll('.', ' ');
  temp = temp.replaceAll(',', ' ');
  var lists = temp.split(" ").toList();
  lists.sort((l1, l2) => l1.length.compareTo(l2.length));
  var map = <String, int>{};
  for (var ele in lists) {
    map[ele] = (map[ele] ?? 0) + 1;
  }
  return map;
}

class User {
  User(this.id, this.name);
  int id;
  String name;
}
void main(List<String> arguments) {
  print('Hello world: ${lab5_tutorial1.calculate()}!');
  // print('Hello world: ${lab5_tutorial1.calculate()}!');
  // Colections:
  // Main 3 types:
  /*
  // 1)list(To store same type of items in particular fixed order)
  // Below way to create a list is called list literal
  var l = ['1', '2']; // Here l is the list and is of type string
  // Below 3 ways to create an empty string
  var l1 = []; // l1 is the string of dynamic data type
  List<int> l2 = [];
  var l3 = <String>[];
  print(l);
  //this code will run perfectly
  print(l[1]);
  print(l.indexOf('1'));
  l[1] = 'abc';
  print(l);
    //this code will run perfectly

  l2.add(21);
  l2.add(23);
  l2.add(10);
  print(l2);
  l2.remove(21); //To remove element with given value
  l2.removeAt(1); //To remove a value with given Index
  print(l2);
  */

  /*
  // Mutable and immutable list
  // List with var is mutable

  // List with final is immutable means we can't reassign it but we can change / add or delete an element from it
  // Here with final if we don't give any data type then type will be String
  final List<String> l4 = ['abc', 'xyz', 'pqr'];
  l4[0] = 'nm';
  l4.add('123');
  l4.remove('xyz');
  print(l4);
  //this code will run perfectly

  //Deeply immutable
  const desserts = [
    'Diya',
    'Riya',
    'Shruti'
  ]; //This is same as , final desserts = const['Akash','Harsh','Shrut'];
  // Below 3 will not work because list is const
  // desserts.add('Jay');
  // desserts.remove('Harsh');
  // desserts[0] = 'abc';
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unModifiableList = List.unmodifiable(modifiableList);
    //this code will run perfectly

  */

  /*
  // List properties
  const drinks = ['water', 'milk', 'juice', 'soda'];
  // Accessing first and last element
  print(drinks.first);
  print(drinks.last);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);
  print(
      drinks.length); //By using this also we can check if list is empty or not
  //this code will run perfectly

  // Looping over the list
  for (var iter in drinks) {
    print(iter);
  }
  drinks.forEach((element) => print(element));
  // Tear-off property
  drinks.forEach(
      print); // And since the input of print is the same as the output of the forEach function, Dart allows you to rephrase that.
    //this code will run perfectly

  */

  // Flutter UI code is composed of classes called widgets. Three common Flutter widgets are rows, columns and stacks, which all store their children as List collections.

  /*
  // Spread operator
  // You can use the spread operator (...) to expand those lists into another list.
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'MMs'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);
  // null spread operator (...?)-->Avoid an error of adding null list
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);
    //this code will run perfectly

  */

  /*
  //collection if
  const peanutAllergy = true;
  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);
  //this code will run perfectly

  // collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts)
      desert.toUpperCase(), //If we do braces over here then also this will work
  ];
  print(bigDeserts);
   //this code will run perfectly
 */

  /*
  // Mini Exercises:
  // Exercise-1:
  List<String> months = [];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('Augest');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);

  // Exercise 2:
  final immutable_months = [...months];
  print(immutable_months);

  // Exercise 3:
  final upperCaseMonths = [for (var itr in months) itr.toUpperCase()];
  print(upperCaseMonths);
  */

  /*
  // 2)Sets
  final Set<int> someSet = {};
  // final someSet = <int>{}; // This is also valid
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet); // {1,2,3}
  // As set don't contain duplicates it avoid 2nd 1
  print(anotherSet.contains(1));
  anotherSet.remove(1);
  anotherSet.addAll([2, 3, 24, 26]);
  print(anotherSet);

  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  // Intersection
  final intersection = setA.intersection(setB);
  print(intersection);
  // Unions
  final union = setA.union(setB);
  print(union);
  */

  /*
  // 3)Map
  final Map<String, int> emptyMap = {};
  // final emptyMap = <String, int>{};
  final emptySomething =
      {}; //This is a map of type <dynamic,dynamic> not set <dynamic>
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);
  // Key in map must be unique
  var numberOfCakes = inventory['cakes'];
  print(numberOfCakes); //Instead of index we use key in map
  print(numberOfCakes?.isEven);

  // To add an element into map
  inventory['brownies'] = 3;

  // To update an element into map
  inventory['cakes'] = 1;

  // To remove an element from map
  inventory.remove('cookies');
  print(inventory);

  /*
  // Map properties:
  print(inventory.isEmpty);
  print(inventory.length);
  print(inventory.keys);
  print(inventory.values);
  //this code will run perfectly

  //Checking for key or value existence
  print(inventory.containsKey('pies'));
  print(inventory.containsValue(42));

  // List and Set both implement Iterable, but Map does not.
  //  So we can iterate map using for in loop
  //    for (var item in inventory) {
  //     print(inventory[item]);
  //   }
  //this code will run perfectly
  
  */

  for (var item in inventory.keys) {
    print(inventory[item]);
  }
  inventory.forEach((key, value) => print("$key -> $value"));
  for (var entry in inventory.entries) {
    print("${entry.key} --> ${entry.value}");
  }
    //this code will run perfectly

  */

  /*
  // Mini exercise:
  // Exercise 1
  Map<String, String> mySelf = {
    'name': 'Dev',
    'profession': 'Student',
    'country': 'India',
    'city': 'Valsad'
  };
  // Exercise 2
  mySelf['country'] = 'Canada';
  mySelf['city'] = 'Toronto';
  // Exercise 3
  for (var key in mySelf.keys) {
    print("$key --> ${mySelf[key]}");
  }
  */

  /*
  // map and where method
  // Mapping over a collection:
  var numbers = [1, 2, 3, 4];
  final square = numbers.map((ele) => ele * ele);
  print(square);

  // Filtering a collection(using where method which must return boolean value)
  final evens = square.where((sq) => sq.isEven);
  print(evens);
  //this code will run perfectly
  final total = numbers.reduce((sum, ele) => sum + ele);
  print(total);
  //this code will run perfectly
  // Same as reduce but take an initital value so if list is empty then we don't get any error
  final ans = numbers.fold(0, (int sum, ele) => sum + ele);
  print(ans);

  // Sort a list
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort(); //This is in-place sorting so dessert will be sorted

  // Reverse a list
  final desserts1 = ['cookies', 'pie', 'donuts', 'brownies'];
  final dessertsReversed = desserts1.reversed;
  print(desserts1);
  print(dessertsReversed);
  //this code will run perfectly
  // Custom sorting
  print(desserts);
  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  // The compareTo method returns -1 if the first length is shorter, 1 if it’s longer, and 0 if both lengths are the same.
  print(desserts);

  // Combining higher order method
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);
  */

  /*
  // Mini exercises:
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  // exercise 1:
  scores.sort();
  print("Heighest:${scores[scores.length - 1]} , Lowest : ${scores[0]}");
  //this code will run perfectly
  // exercise 2:
  var rangeScore = scores.where((element) => element <= 90 && element >= 80);
  print(rangeScore);
  */
/*
  // Challenges
  // Challenge 1:
  String para =
      "Most studies looking at the word frequency effect use eye tracking data. When words have a higher frequency, readers fixate on them for shorter amounts of time.In one study, participants' eye movements were recorded as they scanned single sentence stimuli for topic relevant words.Researchers used an Eyelink eye tracker to record the movements of the participants' eyes. Reading times were found to be longer when focusing for comprehension due to increased average fixation durations. Results showed that reading for comprehension rather than scanning for certain words took longer fixations on the text.";
  var sets = returnUniqueWords(para);
  print(sets);

  // Challenge 2:
  var map = returnCountWords(para);
  map.forEach((key, value) {
    print("$key --> $value");
  });

  // Challenge 3:
  User user1 = User(1, 'Div');
  User user2 = User(2, 'Rivan');
  User user3 = User(3, 'Het');
  List<User> users = [user1, user2, user3];

  var userMap = listToMap(users);
  for (var key in userMap.keys) {
    print("id($key) --> name(${userMap[key]})");
  }
}

Map<int, String> listToMap(List<User> users) {
  var usersMap = <int, String>{};
  for (var user in users) {
    usersMap[user.id] = user.name;
  }
  return usersMap;
  //Output:
  //   [, , , , , , a, be, at, an, on, to, on, of, In, to, as, of, to, the, for, due, use, for, one, eye, the, eye, eye, for, the, for, the, for, used, text, were, took, when, they, data, eyes, time, word, When, than, have, Most, them, were, that, words, topic, times, found, study, words, words, effect, record, single, longer, fixate, showed, higher, rather, longer, certain, stimuli, readers, amounts, shorter, looking, studies, average, Results, tracker, reading, scanned, Reading, Eyelink, focusing, sentence, fixation, relevant, scanning, tracking, recorded, increased, durations, frequency, frequency, fixations, movements, movements, Researchers, comprehension, comprehension, participants', participants']
  // {, a, be, at, an, on, to, of, In, as, the, for, due, use, one, eye, used, text, were, took, when, they, data, eyes, time, word, When, than, have, Most, them, that, words, topic, times, found, study, effect, record, single, longer, fixate, showed, higher, rather, certain, stimuli, readers, amounts, shorter, looking, studies, average, Results, tracker, reading, scanned, Reading, Eyelink, focusing, sentence, fixation, relevant, scanning, tracking, recorded, increased, durations, frequency, fixations, movements, Researchers, comprehension, participants'}
  // {, a, be, at, an, on, to, of, In, as, the, for, due, use, one, eye, used, text, were, took, when, they, data, eyes, time, word, When, than, have, Most, them, that, words, topic, times, found, study, effect, record, single, longer, fixate, showed, higher, rather, certain, stimuli, readers, amounts, shorter, looking, studies, average, Results, tracker, reading, scanned, Reading, Eyelink, focusing, sentence, fixation, relevant, scanning, tracking, recorded, increased, durations, frequency, fixations, movements, Researchers, comprehension, participants'}
  // --> 6
  // a --> 1
  // be --> 1
  // at --> 1
  // an --> 1
  // on --> 2
  // to --> 3
  // of --> 2
  // In --> 1
  // as --> 1
  // the --> 4
  // for --> 5
  // due --> 1
  // use --> 1
  // one --> 1
  // eye --> 3
  // used --> 1
  // text --> 1
  // were --> 2
  // took --> 1
  // when --> 1
  // they --> 1
  // data --> 1
  // eyes --> 1
  // time --> 1
  // word --> 1
  // When --> 1
  // than --> 1
  // have --> 1
  // Most --> 1
  // them --> 1
  // that --> 1
  // words --> 3
  // topic --> 1
  // times --> 1
  // found --> 1
  // study --> 1
  // effect --> 1
  // record --> 1
  // single --> 1
  // longer --> 2
  // fixate --> 1
  // showed --> 1
  // higher --> 1
  // rather --> 1
  // certain --> 1
  // stimuli --> 1
  // readers --> 1
  // amounts --> 1
  // shorter --> 1
  // looking --> 1
  // studies --> 1
  // average --> 1
  // Results --> 1
  // tracker --> 1
  // reading --> 1
  // scanned --> 1
  // Reading --> 1
  // Eyelink --> 1
  // focusing --> 1
  // sentence --> 1
  // fixation --> 1
  // relevant --> 1
  // scanning --> 1
  // tracking --> 1
  // recorded --> 1
  // increased --> 1
  // durations --> 1
  // frequency --> 2
  // fixations --> 1
  // movements --> 2
  // Researchers --> 1
  // comprehension --> 2
  // participants' --> 2
  // id(1) --> name(Dev)
  // id(2) --> name(Rivan)
  // id(3) --> name(Het)*/
}
