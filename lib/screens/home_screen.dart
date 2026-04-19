import 'package:flutter/material.dart';
import 'package:travello_app/app_section/account_section.dart';
import 'package:travello_app/app_section/cart_section.dart';
import 'package:travello_app/app_section/favorite_section.dart';
import 'package:travello_app/app_section/home_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String homeScreenRoute = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> sections = [
    HomeSection(),
    CartSection(),
    FavoriteSection(),
    AccountSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sections[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        backgroundColor: Color(0xffFF3951),
        type: .fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: .w500,
          color: Color(0xff000000),
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: .w500,
          color: Color(0xffFFFFFF),
        ),
        unselectedItemColor: Color(0xffFFFFFF),
        selectedItemColor: Color(0XFF000000),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/home_icon.png",
              color: Color(0xffFFFFFF),
            ),
            activeIcon: Image.asset(
              "assets/icons/home_icon.png",
              color: Color(0xff000000),
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/cart_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/cart_icon.png",
              color: Color(0xff000000),
            ),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/favorite_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/favorite_icon.png",
              color: Color(0xff000000),
            ),
            label: "Favorite",
          ),

          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/profile_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/profile_icon.png",
              color: Color(0xff000000),
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
