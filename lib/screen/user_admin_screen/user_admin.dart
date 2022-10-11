import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketapp/component/user_admin_card.dart';
import 'package:ticketapp/screen/user_signin/user_signin.dart';
import 'package:ticketapp/utils/constants.dart';

class UserAdminSelection extends StatelessWidget {
  const UserAdminSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: UserAdminCard(
                  title: 'User',
                  description: 'If you’re looking to buy tickets',
                  svgName: 'person',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UserSignin(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Expanded(
                child: UserAdminCard(
                  title: 'Admin',
                  description: 'If you’re a staff that scans tickets',
                  svgName: 'staff',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
