part of 'fetch_data_bloc.dart';

@immutable
sealed class FetchDataState {}

final class FetchDataInitial extends FetchDataState {}

class FetchDataLoading extends FetchDataState {}

class FetchDataLoaded extends FetchDataState {

  final List<Task> tasks;
  FetchDataLoaded({required this.tasks});
}

class FetchDataError extends FetchDataState {}
