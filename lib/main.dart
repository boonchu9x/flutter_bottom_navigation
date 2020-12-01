import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bottom_navigation/page/home_page.dart';
import 'package:flutter_bottom_navigation/page/setting_page.dart';
import 'package:flutter_bottom_navigation/page/work_page.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
      theme: ThemeData(
        primaryColor: colorTheme,
        fontFamily: 'Roboto',
      ),
    ));

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //index
  int _indexSelected = 0;

  //list page fragment
  final List<Widget> _children = [
    HomeScreen(),
    WorkScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    //change color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //change status bar color
      statusBarColor: colorTheme,
      //theme dark or light
      //statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      //load boby follow index selected
      body: _children[_indexSelected],

      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_travel),
            title: Text(
              'Work',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(
              'Setting',
            ),
          ),
        ],
        currentIndex: _indexSelected,
        onTap: onTapItem,
      ),
    );
  }

  //func tap change select
  void onTapItem(int index) {
    setState(() {
      _indexSelected = index;
    });
  }
}
