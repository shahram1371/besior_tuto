// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forcast_days_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForCastDayModel _$ForCastDayModelFromJson(Map<String, dynamic> json) =>
    ForCastDayModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezone_offset: json['timezone_offset'] as int?,
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
      alert: (json['alert'] as List<dynamic>?)
          ?.map((e) => Alerts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForCastDayModelToJson(ForCastDayModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezone_offset,
      'current': instance.current,
      'daily': instance.daily,
      'alert': instance.alert,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      json['dt'] as int?,
      json['sunrise'] as int?,
      json['sunset'] as int?,
      (json['temp'] as num?)?.toDouble(),
      (json['feels_like'] as num?)?.toDouble(),
      json['pressure'] as int?,
      json['humidity'] as int?,
      (json['dew_point'] as num?)?.toDouble(),
      (json['uvi'] as num?)?.toDouble(),
      json['clouds'] as int?,
      json['visibility'] as int?,
      (json['wind_speed'] as num?)?.toDouble(),
      json['wind_deg'] as int?,
      (json['wind_gust'] as num?)?.toDouble(),
      (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dew_point,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.wind_speed,
      'wind_deg': instance.wind_deg,
      'wind_gust': instance.wind_gust,
      'weather': instance.weather,
    };

Alerts _$AlertsFromJson(Map<String, dynamic> json) => Alerts(
      json['sender_name'] as String?,
      json['event'] as String?,
      json['start'] as int?,
      json['end'] as int?,
      json['description'] as String?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AlertsToJson(Alerts instance) => <String, dynamic>{
      'sender_name': instance.sender_name,
      'event': instance.event,
      'start': instance.start,
      'end': instance.end,
      'description': instance.description,
      'tags': instance.tags,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      json['dt'] as int?,
      json['sunrise'] as int?,
      json['sunset'] as int?,
      json['moonrise'] as int?,
      json['moonset'] as int?,
      (json['moon_phase'] as num?)?.toDouble(),
      json['temp'] == null
          ? null
          : Temp.fromJson(json['temp'] as Map<String, dynamic>),
      json['feels_like'] == null
          ? null
          : FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      json['pressure'] as int?,
      json['humidity'] as int?,
      (json['dew_point'] as num?)?.toDouble(),
      (json['wind_speed'] as num?)?.toDouble(),
      json['wind_deg'] as int?,
      (json['wind_gust'] as num?)?.toDouble(),
      (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['clouds'] as int?,
      (json['pop'] as num?)?.toDouble(),
      (json['rain'] as num?)?.toDouble(),
      (json['uvi'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dew_point,
      'wind_speed': instance.wind_speed,
      'wind_deg': instance.wind_deg,
      'wind_gust': instance.wind_gust,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) => FeelsLike(
      (json['day'] as num?)?.toDouble(),
      (json['night'] as num?)?.toDouble(),
      (json['eve'] as num?)?.toDouble(),
      (json['morn'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FeelsLikeToJson(FeelsLike instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      (json['day'] as num?)?.toDouble(),
      (json['min'] as num?)?.toDouble(),
      (json['max'] as num?)?.toDouble(),
      (json['night'] as num?)?.toDouble(),
      (json['eve'] as num?)?.toDouble(),
      (json['morn'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
