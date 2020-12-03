import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bottom_navigation/page/home_page.dart';
import 'package:flutter_bottom_navigation/page/setting_page.dart';
import 'package:flutter_bottom_navigation/page/work_page.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

import 'class.dart';

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

      final List<String> list = ['a', 'b', 'c', 'd', 'e'];
      for (int i = 0; i < list.length; i++) {
        print(list[i]);
      }

      //HỌC DART
      List<Car> listCar = <Car>[];
      listCar.add(Car(name: "Name1", model: 1));
      listCar.add(Car(name: "Name2", model: 2));

      listCar
          .sort((car1, car2) => car1.model - car2.model); //acsending: tăng dần
      listCar
          .sort((car1, car2) => car2.model - car1.model); //desending: giảm dần

      listCar.sort((car1, car2) =>
          car1.name.compareTo(car2.name)); //sort string acsending

      listCar[0].name = "New name";

      listCar.where((element) => element.model >= 1 &&
          element.name.toUpperCase().contains("A"))
          .toList();


      final List<String> listString = ['A', 'b', 'c'];
      listString.add('d');

      Map<double, double> map = Map(); //key:double, value: double
      map[1] = 9;

    });
  }
}
