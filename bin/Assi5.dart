class Student {
  int _id;
  static int idPluse = 1;
  String _name;
  double _grade;
  String _email = 'Null';
  String _address = 'Null';
  String _phone = 'Null';
  Student(this._name, this._grade) : _id = idPluse++;

  //setter & getter
  set Grade(double value) {
    if (value >= 0 && value <= 100)
      _grade = value;
    else
      print('Invalid grade value!');
  }

  double get Grade => this._grade;

  set Email(String value) {
    if (value.contains('@'))
      _email = value;
    else
      print('Invalid email address!');
  }

  String get Email => this._email;

  set Address(String value) {
    _address = value;
  }

  String get Address => this._address;

  set Phone(String value) {
    _phone = value;
  }

  String get Phone => this._phone;

  //Searching method
  static void search(List<Student> list, double grade, bool isGreater) {
    String GOrL = isGreater ? 'Greater' : 'Less';
    print('Students who have a $GOrL than $grade are: ');
    for (var s in list) {
      bool res;
      if (isGreater)
        res = s.Grade >= grade;
      else
        res = s.Grade < grade;
      if (res) print(s._name + ' whith grade ${s.Grade}');
    }
  }

  //Printing method
  void printStudentInfo() {
    print(
      'Student name: $_name, Grade:$Grade, Address: $Address, Email: $Email, Phone: $Phone',
    );
  }

  //toString override
  @override
  String toString() {
    return 'Student id: $_id, name: $_name, Grade:$Grade, Address: $Address, Email: $Email, Phone: $Phone';
  }

  //Method to check pass/fail
  bool isPassed() => _grade >= 60;
}

main() {
  var s1 = Student('Ahmed', 90);
  var s2 = Student('Sarah', 95.5);
  var s3 = Student('Mohammed', 70.8);

  List<Student> studentList = [s1, s2, s3];

  print('\nAll Students:');
  for (var student in studentList) {
    student.printStudentInfo();
  }

  s1.Address = 'Gaza City';
  s1.Grade = 80;
  print('\nUpdating Student\'s info:');
  s1.printStudentInfo();

  s2.Grade = 85;
  s2.Email = 'saaraah@gmail.com';
  print('\nUpdating Student\'s info:');
  s2.printStudentInfo();

  s3.Address = 'Alquds';
  s3.Phone = '0588520100';
  print('\nUpdating Student\'s info:');
  s3.printStudentInfo();

  Student.search(studentList, 80, true);

  //Sorting list
  studentList.sort((a, b) => b.Grade.compareTo(a.Grade));
  print('Descending Sorte for the students by Grade:');
  for (var s in studentList) {
    print(s);
  }
}
