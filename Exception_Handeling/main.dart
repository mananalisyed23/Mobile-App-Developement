import 'dart:io';

void main() {
  try {
    File file = File('Exception_Handeling/sample.txt');
    print(file.readAsStringSync());
  } catch (e) {
    print(e);
  }
  ExceptionHandling exp = ExceptionHandling();
  exp.exception();
}

// We can throw our own made exceptions also
class ExceptionHandling {
  void exception() {
    int value = -6;
    try {
      if (value < 0) {
        throw Exception('Value must be positive');
      }
    } catch (e) {
      print(e);
    }
  }
}
