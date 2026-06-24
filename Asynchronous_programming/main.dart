void main(){
getheringData();
fetchData();
}
//,,,future,,,
void fetchData()async{
  print('Fetching data...');
  getData().then((value) => print('Data Fetched'));
  print('Other operations');
}
Future<String> getData() async{
  await Future.delayed(Duration(seconds: 5));
  return 'Data Fetched';
}
// ,,,Stream,,,,
void getheringData()async{
  print('Fetching data...');
  gettingData().listen((value) => print(value));
  print('Other operations');
}
Stream <int> gettingData() async*{
  for(int x=1;x<=10;x++){
    await Future.delayed(Duration(seconds: 3));
    yield x;
  }
}