// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  Name get name => throw _privateConstructorUsedError;
  Idd get idd => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({Name name, Idd idd, String flag});

  $NameCopyWith<$Res> get name;
  $IddCopyWith<$Res> get idd;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? idd = freezed,
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      idd: idd == freezed
          ? _value.idd
          : idd // ignore: cast_nullable_to_non_nullable
              as Idd,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $IddCopyWith<$Res> get idd {
    return $IddCopyWith<$Res>(_value.idd, (value) {
      return _then(_value.copyWith(idd: value));
    });
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  $Res call({Name name, Idd idd, String flag});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $IddCopyWith<$Res> get idd;
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, (v) => _then(v as _$_Country));

  @override
  _$_Country get _value => super._value as _$_Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? idd = freezed,
    Object? flag = freezed,
  }) {
    return _then(_$_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      idd: idd == freezed
          ? _value.idd
          : idd // ignore: cast_nullable_to_non_nullable
              as Idd,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  const _$_Country({required this.name, required this.idd, required this.flag});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final Name name;
  @override
  final Idd idd;
  @override
  final String flag;

  @override
  String toString() {
    return 'Country(name: $name, idd: $idd, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.idd, idd) &&
            const DeepCollectionEquality().equals(other.flag, flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(idd),
      const DeepCollectionEquality().hash(flag));

  @JsonKey(ignore: true)
  @override
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {required final Name name,
      required final Idd idd,
      required final String flag}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Idd get idd => throw _privateConstructorUsedError;
  @override
  String get flag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

Idd _$IddFromJson(Map<String, dynamic> json) {
  return _Idd.fromJson(json);
}

/// @nodoc
mixin _$Idd {
  String get root => throw _privateConstructorUsedError;
  List<String> get suffixes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IddCopyWith<Idd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IddCopyWith<$Res> {
  factory $IddCopyWith(Idd value, $Res Function(Idd) then) =
      _$IddCopyWithImpl<$Res>;
  $Res call({String root, List<String> suffixes});
}

/// @nodoc
class _$IddCopyWithImpl<$Res> implements $IddCopyWith<$Res> {
  _$IddCopyWithImpl(this._value, this._then);

  final Idd _value;
  // ignore: unused_field
  final $Res Function(Idd) _then;

  @override
  $Res call({
    Object? root = freezed,
    Object? suffixes = freezed,
  }) {
    return _then(_value.copyWith(
      root: root == freezed
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      suffixes: suffixes == freezed
          ? _value.suffixes
          : suffixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_IddCopyWith<$Res> implements $IddCopyWith<$Res> {
  factory _$$_IddCopyWith(_$_Idd value, $Res Function(_$_Idd) then) =
      __$$_IddCopyWithImpl<$Res>;
  @override
  $Res call({String root, List<String> suffixes});
}

/// @nodoc
class __$$_IddCopyWithImpl<$Res> extends _$IddCopyWithImpl<$Res>
    implements _$$_IddCopyWith<$Res> {
  __$$_IddCopyWithImpl(_$_Idd _value, $Res Function(_$_Idd) _then)
      : super(_value, (v) => _then(v as _$_Idd));

  @override
  _$_Idd get _value => super._value as _$_Idd;

  @override
  $Res call({
    Object? root = freezed,
    Object? suffixes = freezed,
  }) {
    return _then(_$_Idd(
      root: root == freezed
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      suffixes: suffixes == freezed
          ? _value._suffixes
          : suffixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Idd implements _Idd {
  const _$_Idd({required this.root, required final List<String> suffixes})
      : _suffixes = suffixes;

  factory _$_Idd.fromJson(Map<String, dynamic> json) => _$$_IddFromJson(json);

  @override
  final String root;
  final List<String> _suffixes;
  @override
  List<String> get suffixes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suffixes);
  }

  @override
  String toString() {
    return 'Idd(root: $root, suffixes: $suffixes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idd &&
            const DeepCollectionEquality().equals(other.root, root) &&
            const DeepCollectionEquality().equals(other._suffixes, _suffixes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(root),
      const DeepCollectionEquality().hash(_suffixes));

  @JsonKey(ignore: true)
  @override
  _$$_IddCopyWith<_$_Idd> get copyWith =>
      __$$_IddCopyWithImpl<_$_Idd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IddToJson(this);
  }
}

abstract class _Idd implements Idd {
  const factory _Idd(
      {required final String root,
      required final List<String> suffixes}) = _$_Idd;

  factory _Idd.fromJson(Map<String, dynamic> json) = _$_Idd.fromJson;

  @override
  String get root => throw _privateConstructorUsedError;
  @override
  List<String> get suffixes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IddCopyWith<_$_Idd> get copyWith => throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get common => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call({String common});
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object? common = freezed,
  }) {
    return _then(_value.copyWith(
      common: common == freezed
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  $Res call({String common});
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, (v) => _then(v as _$_Name));

  @override
  _$_Name get _value => super._value as _$_Name;

  @override
  $Res call({
    Object? common = freezed,
  }) {
    return _then(_$_Name(
      common: common == freezed
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  const _$_Name({required this.common});

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String common;

  @override
  String toString() {
    return 'Name(common: $common)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
            const DeepCollectionEquality().equals(other.common, common));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(common));

  @JsonKey(ignore: true)
  @override
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(this);
  }
}

abstract class _Name implements Name {
  const factory _Name({required final String common}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String get common => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}
