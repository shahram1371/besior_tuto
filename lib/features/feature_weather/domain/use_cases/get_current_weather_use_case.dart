import 'package:be_senior/core/usecase.dart/use_case.dart';
import 'package:be_senior/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/src/widgets/async.dart';

import '../entites/current_city_entitty.dart';

class GetCurrentWeatherUseCase extends UseCase<CurentCityEntity, String> {
  WeatearRepsitory weatearRepsitory;
  GetCurrentWeatherUseCase({
    required this.weatearRepsitory,
  });

  @override
  Future<Either<String, CurentCityEntity>> call(String params) {
    return weatearRepsitory.fetchCurrentWeatherData(params);
  }
}
