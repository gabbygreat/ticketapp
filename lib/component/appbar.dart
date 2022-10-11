import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketapp/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? action;
  final Function()? doBack;
  final Function()? doAction;
  final bool hideLeading;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.action,
    this.doBack,
    this.doAction,
    this.hideLeading = false,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: (25),
          vertical: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: hideLeading
                  ? null
                  : doBack ?? () => Navigator.of(context).pop(),
              child: SvgPicture.asset(
                'assets/svg/arrow-left.svg',
                color: hideLeading ? Colors.transparent : null,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: ColorConstant.lightBlackColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            GestureDetector(
              onTap: doAction,
              child: SvgPicture.asset(
                action ?? '',
                color: (action == null)
                    ? Colors.transparent
                    : ColorConstant.lightBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
