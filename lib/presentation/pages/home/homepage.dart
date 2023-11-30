// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tugas_akhir_dicoding/constant/theme/size_dimension.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/auth/detail_account/detail_account_screen.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/home/home.dart';
import 'package:tugas_akhir_dicoding/presentation/pages/saved/save_screen.dart';

final gap = SizedBoxDimen();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> bottomNavBar = [
    const Home(),
    const Saved(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavBar[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xffff9470),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.houseChimney,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidBookmark), label: 'Bookmark'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidUser), label: 'Account'),
        ],
      ),
    );
  }
}
