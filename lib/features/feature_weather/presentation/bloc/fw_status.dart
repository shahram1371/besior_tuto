import 'package:be_senior/core/params/forecast_params.dart';
import 'package:be_senior/features/feature_weather/domain/entites/forecase_days_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class FwStatus extends Equatable {}

class FwLoading extends FwStatus {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FwCompleted extends FwStatus {
  final ForecastDaysEntity forecastDaysEntity;
  FwCompleted({
    required this.forecastDaysEntity,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [forecastDaysEntity];
}

class FwError extends FwStatus {
  final String message;
  FwError({
    required this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
