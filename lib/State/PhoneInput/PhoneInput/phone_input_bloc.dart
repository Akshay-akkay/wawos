import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_input_state.dart';
part 'phone_input_event.dart';
part 'phone_input_bloc.freezed.dart';

class PhoneInputBloc extends Bloc<PhoneInputEvent, PhoneInputState> {
  PhoneInputBloc()
      : super(
          PhoneInputGeneratedState(
            phoneNumberController: TextEditingController(text: ''),
            countryCodeController: TextEditingController(text: '+91'),
          ),
        ) {
    on<PhoneInputEvent>((event, emit) {
      if (event is OnNumberChanged) {
        state.phoneNumberController.text = event.number;
        emit(
          state.copyWith(phoneNumberController: state.phoneNumberController),
        );
      } else if (event is OnCountryCodeChanged) {
        state.countryCodeController.text = event.countryCode;
        emit(
          state.copyWith(countryCodeController: state.countryCodeController),
        );
      }
    });
  }
}
