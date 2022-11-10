import 'package:equatable/equatable.dart';

import '../../data/models/forcast_days_model.dart';

class ForecastDaysEntity extends Equatable {
  final double? lat;
  final double? lon;
  final String? timezone;
  final int? timezone_offset;
  final Current? current;
  final List<Daily>? daily;
  final List<Alerts>? alert;

  const ForecastDaysEntity(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezone_offset,
      this.current,
      this.daily,
      this.alert});
  @override
  // TODO: implement props
  List<Object?> get props =>
      [lat, lon, timezone, timezone_offset, current, daily, alert];
}
