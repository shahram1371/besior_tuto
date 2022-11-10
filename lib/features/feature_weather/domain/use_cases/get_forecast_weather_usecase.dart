import 'package:be_senior/core/params/forecast_params.dart';
import 'package:dartz/dartz.dart';

import 'package:be_senior/features/feature_weather/domain/entites/forecase_days_entity.dart';

import '../../../../core/usecase.dart/use_case.dart';
import '../repository/weather_repository.dart';

class GetForecastWeatherUseCase
    extends UseCase<ForecastDaysEntity, ForecastParams> {
  WeatearRepsitory weatearRepsitory;
  GetForecastWeatherUseCase({
    required this.weatearRepsitory,
  });

  @override
  Future<Either<String, ForecastDaysEntity>> call(ForecastParams params) {
    return weatearRepsitory.fetchForecastWeatherData(params);
  }
}
