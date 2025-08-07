import 'dart:io';
//Q1:
/*
void main() {
  var num1 = 5;
  var num2 = 8;

  if ((num1 % 2 == 0 && num2 % 2 != 0) || (num1 > 0 && num2 > 0)) {
    print('true');
  }

  print('Before increment/decrement: num1 = $num1, num2 = $num2');
  num1++;
  num2--;
  print('After increment/decrement: num1 = $num1, num2 = $num2');

  int num1Toint = num1.toInt();
  int bitwise = ~num1;
  print('Bitwise NOT of $num1Toint is $bitwise');

  bool isTrue = num1 > num2 ? true : false;
  print(isTrue);
}
*/

//Q2:
/*
void Func(double num) {
  print('Ceiling: ${num.ceil()}');
  print('Floor: ${num.floor()}');
  print('Rounded: ${num.round()}');
  print("Value: $num");
  print(num > 10 ? "Large" : "Small");
}

void main() {
  Func(4.3);
}
*/

//Q3:
/*
void main() {
  List<int> myList = [2, 4, 6, 8, 10];
  Set elements = myList.toSet();
  elements.add(12);

  var map = Map<int, int>(); // num*3
  for (int num in elements) {
    map[num] = num * 3;
  }
  print(map);
}
*/

//Q4:

main() {
  print('Enter the number of days:');
  var days = int.parse(stdin.readLineSync() ?? '0');
  int numberOfYears = days ~/ 365;
  int remaining = days % 365;
  int numOfMonths = remaining ~/ 30;
  int numOfRemainingDays = remaining % 30;
  print(
    '$days days => Years: $numberOfYears , Months: $numOfMonths , Days: $numOfRemainingDays',
  );
}
