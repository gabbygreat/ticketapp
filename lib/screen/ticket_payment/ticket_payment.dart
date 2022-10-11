import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:ticketapp/component/appbar.dart';
import 'package:ticketapp/component/button.dart';
import 'package:ticketapp/utils/constants.dart';
import 'dart:math';

class TicketPayment extends StatefulWidget {
  const TicketPayment({super.key});

  @override
  State<TicketPayment> createState() => _TicketPaymentState();
}

class _TicketPaymentState extends State<TicketPayment>
    with TickerProviderStateMixin {
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
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: ColorConstant.lightBlackColor,
                  ),
                ),
              )
            ],
          ),
          const TicketPrint()
        ],
      ),
    );
  }
}

class TicketPrint extends StatelessWidget {
  const TicketPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Ticket slip',
        action: 'assets/svg/close.svg',
        hideLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 520,
              child: Stack(
                children: [
                  Container(
                    height: 520,
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                        top: 40, left: 20, right: 20, bottom: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstant.grayColor),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'USER ID',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Oranekwu Gabriel',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          'Boarding time',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          DateFormat('d/MM/yy, hh:mm a')
                                              .format(DateTime.now())
                                              .toLowerCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ticket ID',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '3c866ddc18',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          'Destination',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Awka',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          'Seat no',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(
                                              0xFF6B7280,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '01',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(
                                      0xFF6B7280,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'gabrieloranekwu@gmail.com',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/png/qrcode.png',
                                height: 172,
                                width: 173.3,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Generated 17:44, 12 Jul 22',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF859084),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: CustomPaint(
                            painter: ArcPaint(height: 40),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                            child: CustomPaint(
                              painter: LineDashes(
                                  thickness: 2, color: ColorConstant.grayColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: CustomPaint(
                            painter: ArcPaint(
                              height: 40,
                              isLeft: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Save to gallery',
                    backgroundColor: ColorConstant.primaryColor,
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Purchase another ticket',
                    borderColor: Colors.transparent,
                    textColor: ColorConstant.primaryColor,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ArcPaint extends CustomPainter {
  final bool isLeft;
  final double height;
  ArcPaint({this.isLeft = true, required this.height});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      // ..color = EventryColor('#F3F4F6')
      ..color = ColorConstant.grayColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final paint2 = Paint()
      // ..color = EventryColor('#F3F4F6')
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawArc(Rect.fromLTRB(0, 0, 40, 40), isLeft ? -pi / 2 : pi / 2, pi,
        false, paint);
    canvas.drawArc(Rect.fromLTRB(0, 0, 40, 40), isLeft ? -pi / 2 : pi / 2,
        pi * 2, false, paint2);
    // canvas.drawArc(
    //     Rect.fromLTRB(0, 0, height, height), -pi / 2, -pi + .55, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class LineDashes extends CustomPainter {
  final Color? color;
  final double? thickness;
  LineDashes({this.color, this.thickness});
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = color ?? ColorConstant.grayTextColor
      ..strokeWidth = thickness ?? 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
