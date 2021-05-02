part of 'todo_cubit.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
}
