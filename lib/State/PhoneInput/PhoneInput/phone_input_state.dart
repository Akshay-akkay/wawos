part of 'phone_input_bloc.dart';

@freezed
class PhoneInputState with _$PhoneInputState {
  const factory PhoneInputState._({
    required TextEditingController phoneNumberController,
    required TextEditingController countryCodeController,
  }) = PhoneInputGeneratedState;
}
