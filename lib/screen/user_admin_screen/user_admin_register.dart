import 'package:flutter/material.dart';
import 'package:ticketapp/component/user_admin_card.dart';
import 'package:ticketapp/screen/user_signin/user_signin.dart';

import '../user_create_account/admin_create_account.dart';
import '../user_create_account/user_create.dart';

class UserAdminSelectionR extends StatelessWidget {
  const UserAdminSelectionR({super.key});

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
                  description: 'Register as a user',
                  svgName: 'person',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UserCreateAccount(),
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
                  description: "Staff are entitiled to use their ID's to register",
                  svgName: 'staff',
                   onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AdminCreateAccount(),
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
