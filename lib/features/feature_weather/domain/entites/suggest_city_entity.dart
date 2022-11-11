import 'package:equatable/equatable.dart';

import '../../data/models/sugget_city_model.dart';

class SuggetCityEntity extends Equatable {
  const SuggetCityEntity({
    this.data,
    this.links,
    this.metadata,
  });

  final List<Datum>? data;
  final List<Link>? links;
  final Metadata? metadata;

  @override
  // TODO: implement props
  List<Object?> get props => [data, links, metadata];
}
