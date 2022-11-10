import 'package:be_senior/core/params/forecast_params.dart';
import 'package:be_senior/features/feature_weather/domain/use_cases/get_forecast_weather_usecase.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/fw_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/cw_status.dart';
import 'package:flutter/material.dart';
import '../../domain/use_cases/get_current_weather_use_case.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  final GetForecastWeatherUseCase getForecastWeatherUseCase;
  HomeBloc(
    this.getCurrentWeatherUseCase,
    this.getForecastWeatherUseCase,
  ) : super(HomeState(cwStatus: CwLoading(), fwStatus: FwLoading())) {
    on<LoadCwEvent>((event, emit) async {
      emit(state.copyWith(cwStatus: CwLoading()));
      final resultOrException = await getCurrentWeatherUseCase(event.cityname);
      resultOrException.fold((l) {
        emit(state.copyWith(cwStatus: CwError(message: l)));
      }, (r) {
        emit(state.copyWith(cwStatus: CwCompleted(curentCityEntity: r)));
      });
    });
    on<LoadFwEvent>((event, emit) async {
      emit(state.copyWith(fwStatus: FwLoading()));
      final resultOrException =
          await getForecastWeatherUseCase(event.forecastParams);
      resultOrException.fold((l) {
        emit(state.copyWith(fwStatus: FwError(message: l)));
      }, (r) {
        emit(state.copyWith(fwStatus: FwCompleted(forecastDaysEntity: r)));
      });
    });
  }
}
