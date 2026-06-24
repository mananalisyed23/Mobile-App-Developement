import 'dart:io';

void main() {
  try {
    File file = File('Exception_Handeling/sample.txt');
    print(file.readAsStringSync());
  } catch (e) {
    print(e);
  }
}
