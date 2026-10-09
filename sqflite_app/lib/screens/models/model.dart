class NoteModel {
  int? id;
  String title, body;
  factory NoteModel.fromMap(map) {
    return NoteModel(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
  NoteModel({this.id, required this.title, required this.body});
  Map<String, dynamic> toMap() {
    return {'title': title, 'body': body};
  }
}
