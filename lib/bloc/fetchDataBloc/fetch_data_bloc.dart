import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/repository/fetchdata_repository.dart';

import '../../models/task_model.dart';

part 'fetch_data_event.dart';
part 'fetch_data_state.dart';

class FetchDataBloc extends Bloc<FetchDataEvent, FetchDataState> {
  FetchDataBloc() : super(FetchDataInitial()) {
    on<FetchData>(_fetchData);
  }

  FutureOr<void> _fetchData(
      FetchData event, Emitter<FetchDataState> emit) async {
    emit(FetchDataLoading());
    TaskRepository taskRepository =
        TaskRepository(baseUrl: 'http://127.0.0.1:8000');
    List<Task> tasks = await taskRepository.fetchTasks();
    emit(FetchDataLoaded(tasks: tasks));
  }
}
