import 'package:flutter/material.dart';

import '../../Data/data.dart';

class CustomTextField extends StatelessWidget {
  final CustomTextFieldType type;
  final String? labelText;
  final String? hintText;
  final TextInputType? textInputType;
  final dynamic onChange;
  final int? maxLength;
  final String? initialValue;
  final TextEditingController controller;
  final Function(String?)? onFieldSubmitted;

  ///It is important that this field is initialized even if a function is not passed. Otherwise you will get a null error.
  final String? Function(String?)? validator;
  const CustomTextField({
    Key? key,
    this.labelText,
    this.textInputType,
    required this.controller,
    this.onChange,
    this.hintText,
    required this.type,
    this.validator,
    this.maxLength,
    this.initialValue,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CustomTextFieldType.generalTextField:
        return TextFormField(
          controller: controller,
          maxLength: maxLength,
          buildCounter: (
            BuildContext context, {
            int? currentLength,
            int? maxLength,
            bool? isFocused,
          }) {
            return;
          },
          initialValue: initialValue,
          keyboardType: textInputType,
          onChanged: onChange,
          textAlign: TextAlign.start,
          validator: validator!,
          decoration: InputDecoration(
            // fillColor: ColorService.white,
            filled: true,
            labelText: labelText,
            labelStyle: const TextStyle(
              // color: ColorService.black,
              fontSize: 14,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              // color: ColorService.grey,
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              // borderSide: const BorderSide(color: ColorService.black),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              // borderSide: const BorderSide(
              //   width: 0.5,
              //   color: ColorService.grey,
              // ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              // borderSide: const BorderSide(
              //   color: ColorService.black,
              //   width: 3,
              // ),
            ),
          ),
          onFieldSubmitted: onFieldSubmitted,
        );

      default:
        throw ("type is a required parameter. Example: 'type: CustomTextFieldType.generalTextField'");
    }
  }
}

// class ColorService {
//   ColorService._();
//   static const Color black = Color.fromRGBO(0, 0, 0, 1);
//   static const Color white = Color.fromRGBO(255, 255, 255, 1);
//   static const Color orange = Color.fromRGBO(255, 127, 80, 1);
//   static const Color blue = Color.fromRGBO(45, 156, 219, 1);
//   static const Color gradientGrey = Color.fromRGBO(130, 130, 130, 1);
//   static const Color transparent = Colors.transparent;
//   static const Color grey = Color.fromRGBO(0, 0, 0, 0.5);
//   static const Color green = Colors.green;
//   static const Color red = Colors.red;
// }
