import 'package:ayurseva/screens/historyscreen.dart';
import 'package:ayurseva/screens/homescreen.dart';
import 'package:ayurseva/screens/productscreen.dart';
import 'package:ayurseva/screens/settingscreen.dart';
import 'package:ayurseva/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  static final List<Widget> _navscreens = <Widget>[
    const HomeScreen(),
    const ProductScreen(),
    const HistoryScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _navscreens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 74, 140, 111), boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: GNav(
            rippleColor: Colors.grey.shade300,
            hoverColor: Colors.grey.shade100,
            gap: 6,
            activeColor: Colors.white,
            duration: const Duration(milliseconds: 300),
            color: Colors.black,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.shoppingCart,
                text: 'Products',
              ),
              GButton(
                icon: LineIcons.history,
                text: 'History',
              ),
              GButton(
                icon: LineIcons.cog,
                text: 'Settings',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
