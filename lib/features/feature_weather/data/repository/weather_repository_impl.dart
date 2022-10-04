import 'package:be_senior/features/feature_weather/data/models/current_city_model.dart';
import 'package:dartz/dartz.dart';

import 'package:be_senior/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:be_senior/features/feature_weather/domain/entites/current_city_entitty.dart';
import 'package:be_senior/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:dio/dio.dart';

class WeatherRepositoryImpl extends WeatearRepsitory {
  ApiProvider apiProvider;
  WeatherRepositoryImpl({
    required this.apiProvider,
  });
  @override
  Future<Either<String, CurentCityEntity>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      Response response = await apiProvider.callCurentWeather(cityName);
      if (response.statusCode == 200) {
        CurentCityEntity curentCityEntity =
            CurrentCityModel.fromJson(response.data);
        return Right(curentCityEntity);
      } else {
        return const Left('something went wrong. try again ...');
      }
    } catch (e) {
      return const Left('please check your connection');
    }
  }
}
