import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../domain/entites/current_city_entitty.dart';

@immutable
abstract class CwStatus extends Equatable {}

class CwLoading extends CwStatus {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CwCompleted extends CwStatus {
  final CurentCityEntity curentCityEntity;
  CwCompleted({
    required this.curentCityEntity,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [curentCityEntity];
}

class CwError extends CwStatus {
  final String message;
  CwError({
    required this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
