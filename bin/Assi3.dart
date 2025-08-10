import 'dart:io';
//Q1:
/*
void main() {
  print('Enter your age:');
  var age = int.parse(stdin.readLineSync() ?? '0');
  if (age >= 18)
    print('You are eligible to vote');
  else
    print('You are not eligible to vote');
}
*/

//Q2:
/*
main() {
  print('Even numbers from 1 to 20 are:');
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) print(i);
  }
}
*/

//Q3:
/*
main() {
  print('Enter your password:');
  var pass = stdin.readLineSync();
  while (pass != 'admin123') {
    print('Invalid password! Try again..');
    pass = stdin.readLineSync();
  }
  print('Access granted');
}
*/

//Q4:
/*
main() {
  print('Enter your exam score:');
  var score = double.parse(
    stdin.readLineSync() ?? '0.0',
  ); /* >0? continue: stdin.readLineSync();*/
  //score.round();
  if (score >= 90)
    print('Excellent! you got an A');
  else if (score >= 80 && score < 90)
    print('Very good! you got a B');
  else if (score >= 70 && score < 80)
    print('Good! you got a C');
  else
    print('You need improvement. you got a D');
}
*/

//Q5:
/*
main() {
  print('Enter a number from 1 to 7:');
  var num = int.parse(stdin.readLineSync() ?? '0');
  switch (num) {
    case 1:
      print('Sunday');
    case 2:
      print('Monday');
    case 3:
      print('Tuesday');
    case 4:
      print('Wedenesday');
    case 5:
      print('Thursday');
    case 6:
      print('Friday');
    case 7:
      print('Saturday');
    default:
      print('Invalid input!');
  }
}
*/

//Q6:
main() {
  print('Enter a username:');
  var username = stdin.readLineSync();
  print('Enter your password:');
  var pass = stdin.readLineSync();
  print('Are you A: admin Or B: User? A/B'); //A==> for Adimn, B==> for user
  var role = stdin.readLineSync();

  if (username!.toLowerCase() == 'manager' && pass == 'admin@123') {
    if (role!.toLowerCase() == 'a')
      print('Welcom admin $username! full access granted');
    else
      print('Access denied! admin role required.');
  } else if (username.toLowerCase() == 'guest') {
    if (pass == 'user@123') {
      if (role!.toLowerCase() == 'b')
        print('Welcom guest limited access granted');
    } else
      print('incorrect password. try again!');
  } else
    print('Unknown user');
}
