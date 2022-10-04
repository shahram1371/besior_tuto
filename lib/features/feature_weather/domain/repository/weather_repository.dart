import 'package:be_senior/features/feature_weather/domain/entites/current_city_entitty.dart';
import 'package:dartz/dartz.dart';

abstract class WeatearRepsitory {
  Future<Either<String, CurentCityEntity>> fetchCurrentWeatherData(
      String cityName);
}
