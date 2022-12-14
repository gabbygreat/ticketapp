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
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'User Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              CustomTextInput(
                titleText: 'Email',
                prefixPath: 'assets/svg/mail.svg',
                controller: emailController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextInput(
                titleText: 'Password',
                prefixPath: 'assets/svg/mail.svg',
                controller: passwordController,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomButton(
                onTap: () {
                  if (passwordController.text.isNotEmpty &&
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
