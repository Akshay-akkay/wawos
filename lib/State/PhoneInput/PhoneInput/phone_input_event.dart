part of 'phone_input_bloc.dart';

@freezed
class PhoneInputEvent with _$PhoneInputEvent {
  const factory PhoneInputEvent.onNumberChanged(String number) =
      OnNumberChanged;
  const factory PhoneInputEvent.onCountryCodeChanged(String countryCode) =
      OnCountryCodeChanged;
}
