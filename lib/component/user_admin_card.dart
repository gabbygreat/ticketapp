import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketapp/utils/constants.dart';

class UserAdminCard extends StatelessWidget {
  final String svgName;
  final String title;
  final String description;
  final Function()? onTap;
  const UserAdminCard({
    super.key,
    required this.title,
    required this.description,
    required this.svgName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstant.grayColor,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/svg/$svgName.svg'),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: ColorConstant.lightBlackColor,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: ColorConstant.grayTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
