// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneInputState {
  TextEditingController get phoneNumberController =>
      throw _privateConstructorUsedError;
  TextEditingController get countryCodeController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneInputStateCopyWith<PhoneInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneInputStateCopyWith<$Res> {
  factory $PhoneInputStateCopyWith(
          PhoneInputState value, $Res Function(PhoneInputState) then) =
      _$PhoneInputStateCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController phoneNumberController,
      TextEditingController countryCodeController});
}

/// @nodoc
class _$PhoneInputStateCopyWithImpl<$Res>
    implements $PhoneInputStateCopyWith<$Res> {
  _$PhoneInputStateCopyWithImpl(this._value, this._then);

  final PhoneInputState _value;
  // ignore: unused_field
  final $Res Function(PhoneInputState) _then;

  @override
  $Res call({
    Object? phoneNumberController = freezed,
    Object? countryCodeController = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumberController: phoneNumberController == freezed
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      countryCodeController: countryCodeController == freezed
          ? _value.countryCodeController
          : countryCodeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$$PhoneInputGeneratedStateCopyWith<$Res>
    implements $PhoneInputStateCopyWith<$Res> {
  factory _$$PhoneInputGeneratedStateCopyWith(_$PhoneInputGeneratedState value,
          $Res Function(_$PhoneInputGeneratedState) then) =
      __$$PhoneInputGeneratedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController phoneNumberController,
      TextEditingController countryCodeController});
}

/// @nodoc
class __$$PhoneInputGeneratedStateCopyWithImpl<$Res>
    extends _$PhoneInputStateCopyWithImpl<$Res>
    implements _$$PhoneInputGeneratedStateCopyWith<$Res> {
  __$$PhoneInputGeneratedStateCopyWithImpl(_$PhoneInputGeneratedState _value,
      $Res Function(_$PhoneInputGeneratedState) _then)
      : super(_value, (v) => _then(v as _$PhoneInputGeneratedState));

  @override
  _$PhoneInputGeneratedState get _value =>
      super._value as _$PhoneInputGeneratedState;

  @override
  $Res call({
    Object? phoneNumberController = freezed,
    Object? countryCodeController = freezed,
  }) {
    return _then(_$PhoneInputGeneratedState(
      phoneNumberController: phoneNumberController == freezed
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      countryCodeController: countryCodeController == freezed
          ? _value.countryCodeController
          : countryCodeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$PhoneInputGeneratedState implements PhoneInputGeneratedState {
  const _$PhoneInputGeneratedState(
      {required this.phoneNumberController,
      required this.countryCodeController});

  @override
  final TextEditingController phoneNumberController;
  @override
  final TextEditingController countryCodeController;

  @override
  String toString() {
    return 'PhoneInputState._(phoneNumberController: $phoneNumberController, countryCodeController: $countryCodeController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneInputGeneratedState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumberController, phoneNumberController) &&
            const DeepCollectionEquality()
                .equals(other.countryCodeController, countryCodeController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumberController),
      const DeepCollectionEquality().hash(countryCodeController));

  @JsonKey(ignore: true)
  @override
  _$$PhoneInputGeneratedStateCopyWith<_$PhoneInputGeneratedState>
      get copyWith =>
          __$$PhoneInputGeneratedStateCopyWithImpl<_$PhoneInputGeneratedState>(
              this, _$identity);
}

abstract class PhoneInputGeneratedState implements PhoneInputState {
  const factory PhoneInputGeneratedState(
          {required final TextEditingController phoneNumberController,
          required final TextEditingController countryCodeController}) =
      _$PhoneInputGeneratedState;

  @override
  TextEditingController get phoneNumberController =>
      throw _privateConstructorUsedError;
  @override
  TextEditingController get countryCodeController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PhoneInputGeneratedStateCopyWith<_$PhoneInputGeneratedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneInputEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) onNumberChanged,
    required TResult Function(String countryCode) onCountryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNumberChanged value) onNumberChanged,
    required TResult Function(OnCountryCodeChanged value) onCountryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneInputEventCopyWith<$Res> {
  factory $PhoneInputEventCopyWith(
          PhoneInputEvent value, $Res Function(PhoneInputEvent) then) =
      _$PhoneInputEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneInputEventCopyWithImpl<$Res>
    implements $PhoneInputEventCopyWith<$Res> {
  _$PhoneInputEventCopyWithImpl(this._value, this._then);

  final PhoneInputEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneInputEvent) _then;
}

/// @nodoc
abstract class _$$OnNumberChangedCopyWith<$Res> {
  factory _$$OnNumberChangedCopyWith(
          _$OnNumberChanged value, $Res Function(_$OnNumberChanged) then) =
      __$$OnNumberChangedCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$$OnNumberChangedCopyWithImpl<$Res>
    extends _$PhoneInputEventCopyWithImpl<$Res>
    implements _$$OnNumberChangedCopyWith<$Res> {
  __$$OnNumberChangedCopyWithImpl(
      _$OnNumberChanged _value, $Res Function(_$OnNumberChanged) _then)
      : super(_value, (v) => _then(v as _$OnNumberChanged));

  @override
  _$OnNumberChanged get _value => super._value as _$OnNumberChanged;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$OnNumberChanged(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnNumberChanged implements OnNumberChanged {
  const _$OnNumberChanged(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'PhoneInputEvent.onNumberChanged(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNumberChanged &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$OnNumberChangedCopyWith<_$OnNumberChanged> get copyWith =>
      __$$OnNumberChangedCopyWithImpl<_$OnNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) onNumberChanged,
    required TResult Function(String countryCode) onCountryCodeChanged,
  }) {
    return onNumberChanged(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
  }) {
    return onNumberChanged?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
    required TResult orElse(),
  }) {
    if (onNumberChanged != null) {
      return onNumberChanged(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNumberChanged value) onNumberChanged,
    required TResult Function(OnCountryCodeChanged value) onCountryCodeChanged,
  }) {
    return onNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
  }) {
    return onNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
    required TResult orElse(),
  }) {
    if (onNumberChanged != null) {
      return onNumberChanged(this);
    }
    return orElse();
  }
}

abstract class OnNumberChanged implements PhoneInputEvent {
  const factory OnNumberChanged(final String number) = _$OnNumberChanged;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnNumberChangedCopyWith<_$OnNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCountryCodeChangedCopyWith<$Res> {
  factory _$$OnCountryCodeChangedCopyWith(_$OnCountryCodeChanged value,
          $Res Function(_$OnCountryCodeChanged) then) =
      __$$OnCountryCodeChangedCopyWithImpl<$Res>;
  $Res call({String countryCode});
}

/// @nodoc
class __$$OnCountryCodeChangedCopyWithImpl<$Res>
    extends _$PhoneInputEventCopyWithImpl<$Res>
    implements _$$OnCountryCodeChangedCopyWith<$Res> {
  __$$OnCountryCodeChangedCopyWithImpl(_$OnCountryCodeChanged _value,
      $Res Function(_$OnCountryCodeChanged) _then)
      : super(_value, (v) => _then(v as _$OnCountryCodeChanged));

  @override
  _$OnCountryCodeChanged get _value => super._value as _$OnCountryCodeChanged;

  @override
  $Res call({
    Object? countryCode = freezed,
  }) {
    return _then(_$OnCountryCodeChanged(
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnCountryCodeChanged implements OnCountryCodeChanged {
  const _$OnCountryCodeChanged(this.countryCode);

  @override
  final String countryCode;

  @override
  String toString() {
    return 'PhoneInputEvent.onCountryCodeChanged(countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCountryCodeChanged &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(countryCode));

  @JsonKey(ignore: true)
  @override
  _$$OnCountryCodeChangedCopyWith<_$OnCountryCodeChanged> get copyWith =>
      __$$OnCountryCodeChangedCopyWithImpl<_$OnCountryCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) onNumberChanged,
    required TResult Function(String countryCode) onCountryCodeChanged,
  }) {
    return onCountryCodeChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
  }) {
    return onCountryCodeChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? onNumberChanged,
    TResult Function(String countryCode)? onCountryCodeChanged,
    required TResult orElse(),
  }) {
    if (onCountryCodeChanged != null) {
      return onCountryCodeChanged(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNumberChanged value) onNumberChanged,
    required TResult Function(OnCountryCodeChanged value) onCountryCodeChanged,
  }) {
    return onCountryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
  }) {
    return onCountryCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNumberChanged value)? onNumberChanged,
    TResult Function(OnCountryCodeChanged value)? onCountryCodeChanged,
    required TResult orElse(),
  }) {
    if (onCountryCodeChanged != null) {
      return onCountryCodeChanged(this);
    }
    return orElse();
  }
}

abstract class OnCountryCodeChanged implements PhoneInputEvent {
  const factory OnCountryCodeChanged(final String countryCode) =
      _$OnCountryCodeChanged;

  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnCountryCodeChangedCopyWith<_$OnCountryCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
