class Quiz {
  String title;
  List<String>? candidates;
  int? answer;

  Quiz({required this.title, this.candidates, this.answer});

  // https://pub.dev/documentation/dson/latest/dson/fromMap.html (fromMap())
  Quiz.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        candidates = map['candidates'],
        answer = map['answer'];
}
