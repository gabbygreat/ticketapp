import 'package:flutter/material.dart';
import 'package:ticketapp/component/user_admin_card.dart';
import 'package:ticketapp/screen/user_signin/user_signin.dart';

import '../user_signin/admin_signin.dart';

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
               Expanded(
                child: UserAdminCard(
                  title: 'Admin',
                  description: 'If you’re a staff that scans tickets',
                  svgName: 'staff',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AdminSignin(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
