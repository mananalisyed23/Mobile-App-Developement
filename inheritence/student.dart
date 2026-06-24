import 'person.dart';

class Student extends Person {
  String? rollno;
  int? marks;
  Student(String name, int age, this.rollno, this.marks) : super(name, age) {
    super.hello();
  }
}
