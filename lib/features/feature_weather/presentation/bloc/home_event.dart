part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoadCwEvent extends HomeEvent {
  final String cityname;
  LoadCwEvent({
    required this.cityname,
  });
}
