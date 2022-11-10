import 'package:be_senior/features/feature_weather/domain/entites/forecase_days_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forcast_days_model.g.dart';

@JsonSerializable()
class ForCastDayModel extends ForecastDaysEntity {
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezone_offset;
  @override
  final Current? current;
  @override
  final List<Daily>? daily;
  @override
  final List<Alerts>? alert;
  ForCastDayModel({
    this.lat,
    this.lon,
    this.timezone,
    this.timezone_offset,
    this.current,
    this.daily,
    this.alert,
  }) : super(
            alert: alert,
            current: current,
            daily: daily,
            lat: lat,
            lon: lon,
            timezone: timezone,
            timezone_offset: timezone_offset);
  factory ForCastDayModel.fromJson(Map<String, dynamic> data) =>
      _$ForCastDayModelFromJson(data);
  Map<String, dynamic> toJson() => _$ForCastDayModelToJson(this);
}

@JsonSerializable()
class Current {
  final int? dt;
  final int? sunrise;
  final int? sunset;
  final double? temp;
  final double? feels_like;
  final int? pressure;
  final int? humidity;
  final double? dew_point;
  final double? uvi;
  final int? clouds;
  final int? visibility;
  final double? wind_speed;
  final int? wind_deg;
  final double? wind_gust;
  final List<Weather>? weather;

  Current(
      this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feels_like,
      this.pressure,
      this.humidity,
      this.dew_point,
      this.uvi,
      this.clouds,
      this.visibility,
      this.wind_speed,
      this.wind_deg,
      this.wind_gust,
      this.weather);
  factory Current.fromJson(Map<String, dynamic> data) =>
      _$CurrentFromJson(data);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Alerts {
  final String? sender_name;
  final String? event;
  final int? start;
  final int? end;
  final String? description;
  final List<String>? tags;

  Alerts(this.sender_name, this.event, this.start, this.end, this.description,
      this.tags);
  factory Alerts.fromJson(Map<String, dynamic> data) => _$AlertsFromJson(data);
  Map<String, dynamic> toJson() => _$AlertsToJson(this);
}

@JsonSerializable()
class Daily {
  final int? dt;
  final int? sunrise;
  final int? sunset;
  final int? moonrise;
  final int? moonset;
  final double? moon_phase;
  final Temp? temp;
  final FeelsLike? feels_like;
  final int? pressure;
  final int? humidity;
  final double? dew_point;
  final double? wind_speed;
  final int? wind_deg;
  final double? wind_gust;
  final List<Weather>? weather;
  final int? clouds;
  final double? pop;
  final double? rain;
  final double? uvi;

  Daily(
      this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moon_phase,
      this.temp,
      this.feels_like,
      this.pressure,
      this.humidity,
      this.dew_point,
      this.wind_speed,
      this.wind_deg,
      this.wind_gust,
      this.weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi);
  factory Daily.fromJson(Map<String, dynamic> data) => _$DailyFromJson(data);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable()
class FeelsLike {
  final double? day;
  final double? night;
  final double? eve;
  final double? morn;

  FeelsLike(this.day, this.night, this.eve, this.morn);
  factory FeelsLike.fromJson(Map<String, dynamic> data) =>
      _$FeelsLikeFromJson(data);
  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}

@JsonSerializable()
class Temp {
  final double? day;
  final double? min;
  final double? max;
  final double? night;
  final double? eve;
  final double? morn;

  Temp(this.day, this.min, this.max, this.night, this.eve, this.morn);
  factory Temp.fromJson(Map<String, dynamic> data) => _$TempFromJson(data);
  Map<String, dynamic> toJson() => _$TempToJson(this);
}

@JsonSerializable()
class Weather {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
  factory Weather.fromJson(Map<String, dynamic> data) =>
      _$WeatherFromJson(data);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
