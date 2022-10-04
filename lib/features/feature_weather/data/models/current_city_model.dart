import 'package:json_annotation/json_annotation.dart';

import '../../domain/entites/current_city_entitty.dart';
part 'current_city_model.g.dart';

@JsonSerializable()
class CurrentCityModel extends CurentCityEntity {
  const CurrentCityModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  }) : super(
            base: base,
            clouds: clouds,
            cod: cod,
            coord: coord,
            dt: dt,
            id: id,
            main: main,
            name: name,
            rain: rain,
            sys: sys,
            timezone: timezone,
            visibility: visibility,
            weather: weather,
            wind: wind);

  @override
  final Coord? coord;
  @override
  final List<Weather>? weather;
  @override
  final String? base;
  @override
  final Main? main;
  @override
  final int? visibility;
  @override
  final Wind? wind;
  @override
  final Rain? rain;
  @override
  final Clouds? clouds;
  @override
  final int? dt;
  @override
  final Sys? sys;
  @override
  final int? timezone;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? cod;
  factory CurrentCityModel.fromJson(Map<String, dynamic> data) =>
      _$CurrentCityModelFromJson(data);
  Map<String, dynamic> toJson() => _$CurrentCityModelToJson(this);
}

@JsonSerializable()
class Clouds {
  Clouds({
    this.all,
  });

  int? all;
  factory Clouds.fromJson(Map<String, dynamic> data) => _$CloudsFromJson(data);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable()
class Coord {
  Coord({
    this.lon,
    this.lat,
  });

  double? lon;
  double? lat;
  factory Coord.fromJson(Map<String, dynamic> data) => _$CoordFromJson(data);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class Main {
  Main({
    this.temp,
    this.feels_like,
    this.temp_min,
    this.temp_max,
    this.pressure,
    this.humidity,
    this.sea_level,
    this.grnd_level,
  });

  double? temp;
  double? feels_like;
  double? temp_min;
  double? temp_max;
  int? pressure;
  int? humidity;
  int? sea_level;
  int? grnd_level;
  factory Main.fromJson(Map<String, dynamic> data) => _$MainFromJson(data);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Rain {
  Rain({
    this.the1H,
  });

  double? the1H;
  factory Rain.fromJson(Map<String, dynamic> data) => _$RainFromJson(data);
  Map<String, dynamic> toJson() => _$RainToJson(this);
}

@JsonSerializable()
class Sys {
  Sys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;
  factory Sys.fromJson(Map<String, dynamic> data) => _$SysFromJson(data);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}

@JsonSerializable()
class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  int? id;
  String? main;
  String? description;
  String? icon;
  factory Weather.fromJson(Map<String, dynamic> data) =>
      _$WeatherFromJson(data);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Wind {
  Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  double? speed;
  int? deg;
  double? gust;
  factory Wind.fromJson(Map<String, dynamic> data) => _$WindFromJson(data);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}
