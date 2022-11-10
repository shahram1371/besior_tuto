import 'dart:developer';

import 'package:be_senior/core/params/forecast_params.dart';
import 'package:be_senior/features/feature_weather/data/models/current_city_model.dart';
import 'package:be_senior/features/feature_weather/data/models/forcast_days_model.dart';
import 'package:be_senior/features/feature_weather/domain/entites/forecase_days_entity.dart';
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

  @override
  Future<Either<String, ForecastDaysEntity>> fetchForecastWeatherData(
      ForecastParams params) async {
    try {
      Response response = await apiProvider.sendRequest7DaysForecast(params);
      if (response.statusCode == 200) {
        ForecastDaysEntity forecastDaysEntity =
            ForCastDayModel.fromJson(response.data);
        return Right(forecastDaysEntity);
      } else {
        return const Left('something went wrong. try again ...');
      }
    } catch (e) {
      return const Left('please check your connection');
    }
  }
}
