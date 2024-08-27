import 'dart:convert';

class Task {
  int? id;
  String title;
  String description;
  bool isDone;
  DateTime date;

  Task({
    this.id,
    required this.title,
    required this.description,
    required this.isDone,
    required this.date,
  });

  // Factory constructor to create a Task from JSON
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isDone: json['isDone'],
      date: DateTime.parse(json['date']),
    );
  }

  // Method to convert a Task to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isDone': isDone,
      'date': date.toIso8601String(),
    };
  }

  // Method to convert JSON list to a list of Task objects
  static List<Task> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Task.fromJson(json)).toList();
  }

  // Method to convert a list of Task objects to JSON list
  static List<Map<String, dynamic>> toJsonList(List<Task> tasks) {
    return tasks.map((task) => task.toJson()).toList();
  }
}