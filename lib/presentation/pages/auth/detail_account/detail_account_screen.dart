import 'package:flutter/material.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/homepage.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Account Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            gap.h20Gap,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://raw.githubusercontent.com/marioapn3/marioapn3.github.io/main/assets/images/avatar-1.png',
                              ),
                            ),
                            border: Border.all(
                              color: Colors.black87, // Warna border
                              width: 1.0, // Lebar border
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Change your Profile Photo',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffff9470),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Text(
                        'Profile Information',
                        textAlign:
                            TextAlign.start, // Atur textAlign menjadi start
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      QuestionBorderMark(),
                    ],
                  ),
                  const ProfileDetailInfo(
                    cat: 'Name',
                    value: 'Mario Aprilnino',
                  ),
                  const ProfileDetailInfo(
                    cat: 'Username',
                    value: 'Please fill your username',
                    noValue: true,
                  ),
                  const ProfileDetailInfo(
                    cat: 'Bio',
                    value: 'Please fill your bio about you',
                    noValue: true,
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Text(
                        'Personal Information',
                        textAlign:
                            TextAlign.start, // Atur textAlign menjadi start
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      QuestionBorderMark(),
                    ],
                  ),
                  const ProfileDetailInfo(
                    cat: 'User ID',
                    value: '10239123',
                  ),
                  const ProfileDetailInfo(
                    cat: 'Email',
                    value: 'mario.aprilnino27@gmail.com',
                  ),
                  const ProfileDetailInfo(
                    cat: 'Date of Birth',
                    value: '9 April 2023',
                  ),
                  const ProfileDetailInfo(
                    cat: 'Phone Number',
                    value: '+62 812 4743 0547',
                  ),
                  const Divider(),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Close Your Account',
                          style: TextStyle(
                            color: Color(0xffff9470),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailInfo extends StatelessWidget {
  const ProfileDetailInfo(
      {super.key, required this.cat, required this.value, this.noValue});
  final String cat;
  final String value;
  final bool? noValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                cat,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                value,
                style: TextStyle(
                    color: noValue == true ? Colors.grey : Colors.black),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class QuestionBorderMark extends StatelessWidget {
  const QuestionBorderMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: const Icon(
        size: 13,
        Icons.question_mark_sharp,
      ),
    );
  }
}
