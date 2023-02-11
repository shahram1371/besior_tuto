import 'package:be_senior/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:be_senior/features/feature_weather/data/repository/weather_repository_impl.dart';
import 'package:be_senior/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:be_senior/features/feature_weather/domain/use_cases/get_current_weather_use_case.dart';
import 'package:be_senior/features/feature_weather/domain/use_cases/get_forecast_weather_usecase.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/feature_bookmark/data/data_source/local/database.dart';

GetIt locator = GetIt.instance;
setup() async {
  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  locator.registerSingleton<AppDatabase>(database);
  //apiProvider
  locator.registerSingleton<ApiProvider>(ApiProvider());
  //repository
  locator.registerSingleton<WeatearRepsitory>(
      WeatherRepositoryImpl(apiProvider: locator()));
  //useCase
  locator.registerSingleton<GetCurrentWeatherUseCase>(
      GetCurrentWeatherUseCase(weatearRepsitory: locator()));
  locator.registerSingleton<GetForecastWeatherUseCase>(
      GetForecastWeatherUseCase(weatearRepsitory: locator()));
  //bloc
  locator.registerSingleton<HomeBloc>(HomeBloc(locator(), locator()));
}
