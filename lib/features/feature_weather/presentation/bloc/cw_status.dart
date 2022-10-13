import 'package:flutter/cupertino.dart';

import '../../domain/entites/current_city_entitty.dart';

@immutable
abstract class CwStatus {}

class CwLoading extends CwStatus {}

class CwCompleted extends CwStatus {
  final CurentCityEntity curentCityEntity;
  CwCompleted({
    required this.curentCityEntity,
  });
}

class CwError extends CwStatus {
  final String message;
  CwError({
    required this.message,
  });
}
