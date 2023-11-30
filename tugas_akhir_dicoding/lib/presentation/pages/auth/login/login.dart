// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tugas_akhir_dicoding/constant/theme/size_dimension.dart';

import 'package:tugas_akhir_dicoding/presentation/pages/auth/register/register.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';
import 'package:tugas_akhir_dicoding/presentation/widgets/c_button_sign_up.dart';
import 'package:tugas_akhir_dicoding/presentation/widgets/c_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gap = SizedBoxDimen();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                gap.h10Gap,
                const Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                gap.h20Gap,
                const CustomTextField(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xffff9470),
                  ),
                  hText: 'Your Email Address',
                ),
                gap.h20Gap,
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                gap.h20Gap,
                const CustomTextField(
                  hText: 'Your Password',
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xffff9470),
                  ),
                ),
                gap.h20Gap,
                const CButtonSignUp(
                  title: "Sign In",
                  backColor: Color(0xffff9470),
                  textColor: Colors.white,
                ),
                gap.h10Gap,
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xffff9470),
                  ),
                  child: const Text('Continue as guest'),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have Account ? '),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xffff9470),
                      ),
                      child: const Text(
                        'Register',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
