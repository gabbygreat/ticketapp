import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketapp/utils/constants.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final bool? enabled;
  final void Function()? onTap;
  final String? hintText;
  final String titleText;
  final String prefixPath;
  final Widget? suffixIcon;
  const CustomTextInput({
    Key? key,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.maxLength,
    this.minLines,
    this.expands = false,
    this.enabled,
    this.onChanged,
    this.controller,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.hintText,
    this.suffixIcon,
    required this.prefixPath,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF32322F),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          readOnly: readOnly,
          autofocus: autofocus,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onTap: onTap,
          onSubmitted: onSubmitted,
          enabled: enabled,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF1F2937),
          ),
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(
            //   vertical: 15.h,
            //   horizontal: prefix != null ? 15.w : 12.w,
            // ),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: ColorConstant.grayTextColor,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SvgPicture.asset(
                prefixPath,
                color: ColorConstant.grayColor,
              ),
            ),
            suffixIcon: null,
            hintText: hintText,
            fillColor: const Color(0xFFF3F4F6),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color(0xFFF3F4F6)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color(0xFFF3F4F6)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Color(0xFFF3F4F6)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
