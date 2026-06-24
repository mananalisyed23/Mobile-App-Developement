class Person{
    /* One way to set nullable
    late String _name;
    late int _age;
    late String _country;*/
    //second way to set nullable
    String? _name;
    int? _age;
    String? _country;
    
    set setName(String name) => _name=name;
    String? get getName => _name;
}