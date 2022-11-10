part of 'home_bloc.dart';

class HomeState extends Equatable {
  final CwStatus cwStatus;
  final FwStatus fwStatus;
  const HomeState({
    required this.cwStatus,
    required this.fwStatus,
  });
  @override
  List<Object> get props => [cwStatus, fwStatus];

  HomeState copyWith({
    CwStatus? cwStatus,
    FwStatus? fwStatus,
  }) {
    return HomeState(
      cwStatus: cwStatus ?? this.cwStatus,
      fwStatus: fwStatus ?? this.fwStatus,
    );
  }
}
