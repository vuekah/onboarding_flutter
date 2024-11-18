import 'package:flutter/material.dart';
import 'package:onboarding/common/widget/background.widget.dart';
import 'package:onboarding/common/widget/button.widget.dart';
import 'package:onboarding/common/widget/iconbutton.widget.dart';
import 'package:onboarding/common/widget/textfield.widget.dart';
import '../gen/assets.gen.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = MediaQuery
        .of(context)
        .size;

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
              child: content(dimens, context),
            )
          ]),
        ),
      ),
    );
  }

  Padding content(Size dimens, BuildContext context) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: dimens.width > 420 ? 80 : 120,
            ),
            Hero(
              tag: "auth",
              child: const Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF1F41BB),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create an account so you can explore all the existing jobs",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
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
            const SizedBox(
              height: 20,
            ),
            const TextFieldWidget(
              hint: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ButtonWidget(
                onTap: () {},
                title: "Sign up",
                width: 357,
              ),
            ),
            ButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              title: "Already have an account",
              width: 357,
              fontSize: 14,
              height: 30,
              buttonColor: Colors.transparent,
              textColor: const Color(0xFF494949),
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
}
