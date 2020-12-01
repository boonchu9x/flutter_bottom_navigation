import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

class WorkScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Screen'),
        backgroundColor: colorTheme,
      ),
    );
  }
}
