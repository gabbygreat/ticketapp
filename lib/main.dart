import 'package:flutter/material.dart';
import 'package:ticketapp/screen/home_screen/home_screen.dart';
import 'package:ticketapp/screen/on_success_scan/on_successful_scan.dart';
import 'package:ticketapp/screen/scan_Qr/scan.dart';
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
          primaryColor: ColorConstant.primaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.primaryColor),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size.fromHeight(45),
      ),
    ),
  ),
          
          ),
          
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const HomeScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/OnSuccessfulScan': (context) => const OnSuccessfulScan(),
    '/QRViewExample': (context) => const QRViewExample(),
  },
    );
  }
}
