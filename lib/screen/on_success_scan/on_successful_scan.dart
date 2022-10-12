import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:ticketapp/utils/constants.dart';

import '../scan_Qr/scan_qr.dart';


class OnSuccessfulScan extends StatefulWidget {
  const OnSuccessfulScan({super.key});

  @override
  State<OnSuccessfulScan> createState() => _OnSuccessfulScanState();
}

class _OnSuccessfulScanState extends State<OnSuccessfulScan> with TickerProviderStateMixin {
  late PageController pageController;
  late Timer timer;
 

  @override
  void initState() {
    startTime();
    super.initState();
    pageController = PageController();
  }

  startTime() {
    timer = Timer(const Duration(milliseconds: 3000), () {
      pageController.jumpToPage(1);
      // (route) => false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/svg/success.svg',
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Ticket Scanned',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: ColorConstant.lightBlackColor,
                  ),
                ),
              ),
             const SizedBox(height: 5,),
             const Center(
                child: Text(
                  'Deleting from database....',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          const ScanTicket()
        ],
      ),
    );
  }
}



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  //  Dialog(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(15),
  //     ),
  //     child: Stack(
  //       alignment: Alignment.topCenter,
  //       children: [
  //         SizedBox(
  //           height: MediaQuery.of(context).size.height * 0.35,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               const CircleAvatar(
  //                 backgroundColor: Colors.white,
  //                 radius: 40,
  //                 child: Icon(
  //                   Icons.gpp_good,
  //                   size: 60,
  //                   color: Colors.green,
  //                 ),
  //               ),
  //              const Text(
  //                 "Account created\nsuccessfully",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 20,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //               const SizedBox(
  //                 height: 30,
  //               ),
  //               ElevatedButton(
  //                 style: ElevatedButton.styleFrom(
  //                   side: const BorderSide(
  //                     width: 1.0,
  //                     color: Colors.black,
  //                   ),
  //                   backgroundColor: Colors.white,

  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(20.0)),
  //                   minimumSize: const Size(220, 60), //////// HERE
  //                 ),
  //                 onPressed: () {
  //                  Navigator.of(context).push(MaterialPageRoute(
  //             builder: (context) => const QRViewExample(),
  //           ));
  //                 },
  //                 child:const Text(
  //                   'Now Sign In',
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       color: Colors.black,
  //                       fontWeight: FontWeight.w500),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   ); 