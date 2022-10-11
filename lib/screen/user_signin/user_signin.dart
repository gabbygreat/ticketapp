import 'package:flutter/material.dart';
import 'package:ticketapp/component/button.dart';
import 'package:ticketapp/component/textinput.dart';
import 'package:ticketapp/screen/waiting_process/sigin_wait.dart';
import 'package:ticketapp/utils/constants.dart';

class UserSignin extends StatefulWidget {
  const UserSignin({super.key});

  @override
  State<UserSignin> createState() => _UserSigninState();
}

class _UserSigninState extends State<UserSignin> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'User Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              CustomTextInput(
                titleText: 'Name',
                prefixPath: 'assets/svg/fill-person.svg',
                controller: nameController,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextInput(
                titleText: 'Email',
                prefixPath: 'assets/svg/mail.svg',
                controller: emailController,
              ),
              SizedBox(
                height: 28,
              ),
              CustomButton(
                onTap: () {
                  if (nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SigninWait(),
                      ),
                    );
                  }
                },
                text: 'Sign in',
                textColor: Colors.white,
                backgroundColor: ColorConstant.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
