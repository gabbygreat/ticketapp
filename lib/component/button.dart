import 'package:flutter/material.dart';
import 'package:ticketapp/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final Function() onTap;
  final String text;
  const CustomButton({
    super.key,
    this.borderColor,
    this.backgroundColor,
    this.height,
    this.textColor,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: height ?? 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: borderColor ?? ColorConstant.primaryColor,
          ),
          color: backgroundColor ?? Colors.white,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: textColor ?? ColorConstant.primaryColor),
        ),
      ),
    );
  }
}
