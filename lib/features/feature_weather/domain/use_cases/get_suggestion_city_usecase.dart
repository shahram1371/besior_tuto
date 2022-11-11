import 'package:dartz/dartz.dart';

import 'package:be_senior/core/usecase.dart/use_case.dart';
import 'package:be_senior/features/feature_weather/domain/repository/weather_repository.dart';

import '../../data/models/sugget_city_model.dart';

class GetSuggestCityUseCase implements UseCase<List<Datum>, String> {
  WeatearRepsitory weatearRepsitory;
  GetSuggestCityUseCase({
    required this.weatearRepsitory,
  });

  @override
  Future<Either<String, List<Datum>>> call(String params) {
    return weatearRepsitory.fetchSuggetData(params);
  }
}
