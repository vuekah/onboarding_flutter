import 'package:flutter/material.dart';
import 'package:onboarding/common/widget/background.widget.dart';
import 'package:onboarding/common/widget/button.widget.dart';
import 'package:onboarding/view/login.page.dart';
import 'package:onboarding/view/register.page.dart';
import '../gen/assets.gen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SizedBox(
        width: dimens.width,
        height: dimens.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              BackgroundWidget(
                dimens: dimens,
              ),
              content(context)
            ],
          ),
        ),
      ),
    );
  }

  Column content(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            Assets.images.welcomeImage.path,
            width: 355,
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Discover Your Dream Job here",
              style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF1F41BB),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Explore all the existing job roles based on your interest and study major",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF000000),
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  title: "Login"),
              const SizedBox(
                width: 20,
              ),
              ButtonWidget(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                title: "Register",
                buttonColor: const Color(0xFFFFFFFF),
                textColor: const Color(0xFF000000),
              ),
            ],
          )
        ],
      );
}
