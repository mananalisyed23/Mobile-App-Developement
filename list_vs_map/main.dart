void main(){
  List<int> numbers=[1,2,3,4,5];

  Map<String,dynamic> students={
    'name':'Manan',
    'rollno':518
  };
  print(numbers[0]);
  print(students['name']);
  print(Gender.Male.index);

}
enum Gender {Male,Female,Others}
