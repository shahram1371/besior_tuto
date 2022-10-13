import 'package:be_senior/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:be_senior/features/feature_weather/data/repository/weather_repository_impl.dart';
import 'package:be_senior/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:be_senior/features/feature_weather/domain/use_cases/get_current_weather_use_case.dart';
import 'package:be_senior/features/feature_weather/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
setup() {
  //apiProvider
  locator.registerSingleton<ApiProvider>(ApiProvider());
  //repository
  locator.registerSingleton<WeatearRepsitory>(
      WeatherRepositoryImpl(apiProvider: locator()));
  //useCase
  locator.registerSingleton<GetCurrentWeatherUseCase>(
      GetCurrentWeatherUseCase(weatearRepsitory: locator()));
  //bloc
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}
