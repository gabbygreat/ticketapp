import 'package:flutter/material.dart';
import 'package:ticketapp/component/button.dart';
import 'package:ticketapp/screen/user_admin_screen/user_admin.dart';
import 'package:ticketapp/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              onTap: () {},
              text: 'Create an account',
              backgroundColor: ColorConstant.primaryColor,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomButton(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UserAdminSelection(),
                ),
              ),
              text: 'Sign in',
              textColor: ColorConstant.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
