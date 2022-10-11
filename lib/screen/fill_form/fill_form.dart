import 'package:flutter/material.dart';
import 'package:ticketapp/component/appbar.dart';
import 'package:ticketapp/component/button.dart';
import 'package:ticketapp/component/textinput.dart';
import 'package:ticketapp/screen/waiting_process/fill_form_wait.dart';
import 'package:ticketapp/utils/constants.dart';

class FillForm extends StatelessWidget {
  const FillForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Fill form'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const CustomTextInput(
              prefixPath: 'assets/svg/fill-person.svg', titleText: 'Name'),
          const SizedBox(
            height: 16,
          ),
          const CustomTextInput(
              prefixPath: 'assets/svg/mail.svg', titleText: 'Email'),
          const SizedBox(
            height: 16,
          ),
          const CustomTextInput(
              prefixPath: 'assets/svg/fill-person.svg',
              titleText: 'Destination'),
          const SizedBox(
            height: 16,
          ),
          const CustomTextInput(
              prefixPath: 'assets/svg/fill-person.svg',
              titleText: 'Boarding time'),
          const SizedBox(
            height: 28,
          ),
          CustomButton(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FillFormWait(),
              ),
            ),
            text: 'Proceed',
            textColor: Colors.white,
            backgroundColor: ColorConstant.primaryColor,
          )
        ],
      ),
    );
  }
}
