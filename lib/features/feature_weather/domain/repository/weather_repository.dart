import 'package:be_senior/core/params/forecast_params.dart';
import 'package:be_senior/features/feature_weather/domain/entites/current_city_entitty.dart';
import 'package:be_senior/features/feature_weather/domain/entites/forecase_days_entity.dart';
import 'package:dartz/dartz.dart';

abstract class WeatearRepsitory {
  Future<Either<String, CurentCityEntity>> fetchCurrentWeatherData(
      String cityName);
  Future<Either<String, ForecastDaysEntity>> fetchForecastWeatherData(
      ForecastParams params);
}
