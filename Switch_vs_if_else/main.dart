void main() {
  int a = 5;
  int result1 = 0;
  // Old way we used for if else
  if (a > 10) {
    result1 = 100;
  } else {
    result1 = 400;
  }
  print(result1);
  //short way to write if else
  int b = 6;
  int result2 = 0;
  result2 = b > 10 ? 100 : 500;
  print(result2);
  //Switch case
  int num = 5;
  switch (num) {
    case 0:
      print('Value is zero');
      break;
    case > 0:
      print('Positive Value');
      break;
    case < 0:
      print('Negative value');
      break;
    default:
      print('Undefined');
  }
  ;
}
