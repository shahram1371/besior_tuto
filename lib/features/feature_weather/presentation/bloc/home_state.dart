part of 'home_bloc.dart';

class HomeState extends Equatable {
  final CwStatus cwStatus;
  const HomeState({
    required this.cwStatus,
  });
  @override
  List<Object> get props => [cwStatus];

  HomeState copyWith({
    CwStatus? cwStatus,
  }) {
    return HomeState(
      cwStatus: cwStatus ?? this.cwStatus,
    );
  }
}
