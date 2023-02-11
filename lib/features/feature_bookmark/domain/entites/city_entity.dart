import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@entity
class City extends Equatable {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String name;

  ///we dont write id in generator beacause we want genrate id with generator not by constructor
  City({
    required this.name,
  });

  @override
  List<Object?> get props => [];
}
