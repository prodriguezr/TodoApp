class Task {
  List<Task> tasks;

  int taskId;
  String note;
  DateTime timeToComplete;
  bool completed;
  String repeats;
  DateTime deadline;
  List<DateTime> reminders;
  String title;

  Task(this.taskId, {
    this.note,
    this.timeToComplete,
    this.completed = false,
    this.repeats,
    this.deadline,
    this.reminders,
    this.title,
  });

  factory Task.fromJson(Map<String, dynamic> parsedJson) {
    return Task(
      parsedJson['id'],
      title: parsedJson['title'] ?? "",
      completed: parsedJson['completed'] ?? "",
      note: parsedJson['note'] ?? "",
    );
  }
}
