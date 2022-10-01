class TaskModel {
  String? title;
  String? text;
  bool isComplete;

  TaskModel(
      {required this.isComplete, required this.text, required this.title});

  Map<String, dynamic> toJson() {
    return {'title': title, 'text': text, 'isComplete': isComplete};
  }

  TaskModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        text = json['text'],
        isComplete = json['isComplete'];
}
