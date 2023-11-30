// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tugas_akhir_dicoding/constant/theme/size_dimension.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/auth/login/login.dart';
import 'package:tugas_akhir_dicoding/presentation/widgets/c_button_sign_up.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gap = SizedBoxDimen();
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 45,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/group_4.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Expanded(
              flex: 55,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    const Text(
                      'Sign in to start your journey',
                      style: TextStyle(fontSize: 35),
                    ),
                    gap.h15Gap,
                    const Text(
                      'By proceeding, you agree to our Terms of Use and confrim you have read our Privacy and Cookie Statement.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    gap.h15Gap,
                    const CButtonSignUp(
                      title: "Sign Up with Email",
                      img: 'assets/images/google.png',
                      backColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    gap.h20Gap,
                    const CButtonSignUp(
                      title: "Sign Up with Facebook",
                      img: 'assets/images/fb.png',
                      backColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    gap.h10Gap,
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: const Text(
                        'Already have an account? Sign In',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffff9470)),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
