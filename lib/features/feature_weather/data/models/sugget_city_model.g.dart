// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sugget_city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggetCityModel _$SuggetCityModelFromJson(Map<String, dynamic> json) =>
    SuggetCityModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuggetCityModelToJson(SuggetCityModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'metadata': instance.metadata,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      wikiDataId: json['wikiDataId'] as String?,
      type: json['type'] as String?,
      city: json['city'] as String?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      region: json['region'] as String?,
      regionCode: json['regionCode'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      population: json['population'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'wikiDataId': instance.wikiDataId,
      'type': instance.type,
      'city': instance.city,
      'name': instance.name,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'region': instance.region,
      'regionCode': instance.regionCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'population': instance.population,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      rel: json['rel'] as String?,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'rel': instance.rel,
      'href': instance.href,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      currentOffset: json['currentOffset'] as int?,
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'currentOffset': instance.currentOffset,
      'totalCount': instance.totalCount,
    };
