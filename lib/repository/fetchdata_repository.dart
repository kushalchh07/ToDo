import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../models/task_model.dart';
// Import your Task model

class TaskRepository {
  final String baseUrl;

  TaskRepository({required this.baseUrl});

  // Fetch a list of tasks from the API
  Future<List<Task>> fetchTasks() async {
    try {
      log('Fetching tasks from $baseUrl');
      final response = await http.get(Uri.parse('$baseUrl'));

      if (response.statusCode == 200) {
        log('Successfully fetched tasks');
        List<dynamic> jsonList = jsonDecode(response.body);
        List<Task> tasks = Task.fromJsonList(jsonList);
        log('Number of tasks fetched: ${tasks.length}');
        return tasks;
      } else {
        log('Failed to load tasks');
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      log('Failed to load tasks');
      throw Exception('Failed to load tasks');
    }
  }

  // Fetch a single task by its ID
  Future<Task> fetchTaskById(int id) async {
    try {
      log('Fetching task with ID $id from $baseUrl/tasks/$id/');
      final response = await http.get(Uri.parse('$baseUrl/tasks/$id/'));

      if (response.statusCode == 200) {
        log('Successfully fetched task with ID $id');
        Task task = Task.fromJson(jsonDecode(response.body));
        log('Task with ID $id: $task');
        return task;
      } else {
        log('Failed to load task with ID $id');
        throw Exception('Failed to load task with ID $id');
      }
    } catch (e) {
      log('Failed to load task with ID $id');
      throw Exception('Failed to load task with ID $id');
    }
  }

  // Create a new task
  Future<Task> createTask(Task task) async {
    log('Creating task with: $task');
    final response = await http.post(
      Uri.parse('$baseUrl/tasks/'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(task.toJson()),
    );
    log('HTTP response: $response');

    if (response.statusCode == 201) {
      log('Successfully created task');
      final newTask = Task.fromJson(jsonDecode(response.body));
      log('New task: $newTask');
      return newTask;
    } else {
      log('Failed to create task');
      throw Exception('Failed to create task');
    }
  }

  // Update an existing task
  Future<Task> updateTask(Task task) async {
    final response = await http.put(
      Uri.parse('$baseUrl/tasks/${task.id}/'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(task.toJson()),
    );

    if (response.statusCode == 200) {
      return Task.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update task');
    }
  }

  // Delete a task
  Future<void> deleteTask(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/tasks/$id/'));

    if (response.statusCode != 204) {
      throw Exception('Failed to delete task');
    }
  }
}
