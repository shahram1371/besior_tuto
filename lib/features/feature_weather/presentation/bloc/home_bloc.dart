import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:be_senior/features/feature_weather/domain/entites/current_city_entitty.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/cw_status.dart';

import '../../domain/use_cases/get_current_weather_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  HomeBloc(
    this.getCurrentWeatherUseCase,
  ) : super(HomeState(cwStatus: CwLoading())) {
    on<LoadCwEvent>((event, emit) async {
      emit(state.copyWith(cwStatus: CwLoading()));
      final resultOrException = await getCurrentWeatherUseCase(event.cityname);
      resultOrException.fold((l) {
        emit(state.copyWith(cwStatus: CwError(message: l)));
      }, (r) {
        emit(state.copyWith(cwStatus: CwCompleted(curentCityEntity: r)));
      });
    });
  }
}
