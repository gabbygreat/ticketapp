import 'package:flutter/material.dart';
import 'package:ticketapp/screen/purchase/purchase.dart';
import 'package:ticketapp/utils/constants.dart';

class SigninWait extends StatelessWidget {
  const SigninWait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 5),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: ColorConstant.primaryColor,
              ),
            );
          } else {
            return const Purchase();
          }
        },
      ),
    );
  }
}
