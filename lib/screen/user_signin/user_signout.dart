import 'package:flutter/material.dart';
import 'package:ticketapp/component/button.dart';
import 'package:ticketapp/component/textinput.dart';
import 'package:ticketapp/screen/waiting_process/sigin_wait.dart';
import 'package:ticketapp/utils/constants.dart';

class AdminSignin extends StatefulWidget {
  const AdminSignin({super.key});

  @override
  State<AdminSignin> createState() => _AdminSigninState();
}

class _AdminSigninState extends State<AdminSignin> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
                  'Admin Sign In',
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
                titleText: 'Name',
                prefixPath: 'assets/svg/fill-person.svg',
                controller: nameController,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextInput(
                titleText: 'Email',
                prefixPath: 'assets/svg/mail.svg',
                controller: emailController,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextInput(
                titleText: 'Password',
                prefixPath: 'assets/svg/mail.svg',
                controller: passwordController,
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
