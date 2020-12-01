import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

class SettingScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Screen'),
        backgroundColor: colorTheme,
      ),
    );
  }
}
