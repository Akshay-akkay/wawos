// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({
    required Name name,
    required Idd idd,
    required String flag,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class Idd with _$Idd {
  const factory Idd({
    required String root,
    required List<String> suffixes,
  }) = _Idd;

  factory Idd.fromJson(Map<String, dynamic> json) => _$IddFromJson(json);
}

@freezed
abstract class Name with _$Name {
  const factory Name({
    required String common,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
