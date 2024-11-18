import 'package:flutter/material.dart';
import 'package:onboarding/common/widget/background.widget.dart';
import 'package:onboarding/common/widget/button.widget.dart';
import 'package:onboarding/common/widget/iconbutton.widget.dart';
import 'package:onboarding/common/widget/textfield.widget.dart';
import 'package:onboarding/view/register.page.dart';
import '../gen/assets.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SizedBox(
        width: dimens.width,
        height: dimens.height,
        child: SingleChildScrollView(
          child: Stack(children: [
            BackgroundWidget(
              dimens: dimens,
            ),
            Align(
              alignment: Alignment.center,
              child: content(dimens,context),
            )
          ]),
        ),
      ),
    );
  }
}

Padding content(Size dimens,BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: dimens.width > 420 ? 80 : 120,
          ),
          const Text(
            "Login here",
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF1F41BB),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Welcome back you’ve\nbeen missed!",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          const TextFieldWidget(
            hint: "Email",
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldWidget(
            hint: "Password",
            obscureText: true,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Forgot your password?",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Color(0xFF1F41BB)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ButtonWidget(
              onTap: () {},
              title: "Sign in",
              width: 357,
            ),
          ),
          Hero(
            tag: "auth",
            child: ButtonWidget(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));

              },
              title: "Create new account",
              width: 357,
              fontSize: 14,
              height: 30,
              buttonColor: Colors.transparent,
              textColor: const Color(0xFF494949),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Or continue with",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Color(0xFF1F41BB)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButtonWidget(image: Assets.images.google),
              const SizedBox(
                width: 10,
              ),
              IconButtonWidget(image: Assets.images.facebook),
              const SizedBox(
                width: 10,
              ),
              IconButtonWidget(image: Assets.images.apple)
            ],
          )
        ],
      ),
    );
