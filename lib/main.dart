import 'package:flutter/material.dart';
import 'package:ticketapp/screen/home_screen/home_screen.dart';
import 'package:ticketapp/utils/constants.dart';

void main() {
  runApp(const TicketApp());
}

class TicketApp extends StatelessWidget {
  const TicketApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: ColorConstant.primaryColor),
      home: const HomeScreen(),
    );
  }
}
