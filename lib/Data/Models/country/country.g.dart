// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      idd: Idd.fromJson(json['idd'] as Map<String, dynamic>),
      flag: json['flag'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'idd': instance.idd,
      'flag': instance.flag,
    };

_$_Idd _$$_IddFromJson(Map<String, dynamic> json) => _$_Idd(
      root: json['root'] as String,
      suffixes:
          (json['suffixes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_IddToJson(_$_Idd instance) => <String, dynamic>{
      'root': instance.root,
      'suffixes': instance.suffixes,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      common: json['common'] as String,
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'common': instance.common,
    };
