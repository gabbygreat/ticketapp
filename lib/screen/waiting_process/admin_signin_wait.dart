import 'package:flutter/material.dart';

import 'package:ticketapp/utils/constants.dart';

import '../scan_Qr/scan_qr.dart';

class SigninWait2 extends StatelessWidget {
  const SigninWait2({super.key});

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
            return const ScanQr();
          }
        },
      ),
    );
  }
}
