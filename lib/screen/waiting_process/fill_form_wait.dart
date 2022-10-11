import 'package:flutter/material.dart';
import 'package:ticketapp/screen/ticket_payment/ticket_payment.dart';

class FillFormWait extends StatelessWidget {
  const FillFormWait({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TicketPayment(),
      // body: FutureBuilder(
      //   future: Future.delayed(
      //     const Duration(seconds: 5),
      //   ),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(
      //         child: CircularProgressIndicator(
      //           color: ColorConstant.primaryColor,
      //         ),
      //       );
      //     } else {
      //       return const TicketPayment();
      //     }
      //   },
      // ),
    );
  }
}
