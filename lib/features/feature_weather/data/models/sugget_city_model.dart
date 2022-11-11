import 'package:be_senior/features/feature_weather/domain/entites/suggest_city_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sugget_city_model.g.dart';

@JsonSerializable()
class SuggetCityModel extends SuggetCityEntity {
  const SuggetCityModel({
    this.data,
    this.links,
    this.metadata,
  }) : super(data: data, links: links, metadata: metadata);

  final List<Datum>? data;

  final List<Link>? links;

  final Metadata? metadata;
  factory SuggetCityModel.fromJson(Map<String, dynamic> data) =>
      _$SuggetCityModelFromJson(data);
  Map<String, dynamic> toJson() => _$SuggetCityModelToJson(this);
}

@JsonSerializable()
class Datum {
  Datum({
    this.id,
    this.wikiDataId,
    this.type,
    this.city,
    this.name,
    this.country,
    this.countryCode,
    this.region,
    this.regionCode,
    this.latitude,
    this.longitude,
    this.population,
  });

  int? id;
  String? wikiDataId;
  String? type;
  String? city;
  String? name;
  String? country;
  String? countryCode;
  String? region;
  String? regionCode;
  double? latitude;
  double? longitude;
  int? population;

  factory Datum.fromJson(Map<String, dynamic> data) => _$DatumFromJson(data);
  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Link {
  Link({
    this.rel,
    this.href,
  });

  String? rel;
  String? href;

  factory Link.fromJson(Map<String, dynamic> data) => _$LinkFromJson(data);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

@JsonSerializable()
class Metadata {
  Metadata({
    this.currentOffset,
    this.totalCount,
  });

  int? currentOffset;
  int? totalCount;

  factory Metadata.fromJson(Map<String, dynamic> data) =>
      _$MetadataFromJson(data);
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
