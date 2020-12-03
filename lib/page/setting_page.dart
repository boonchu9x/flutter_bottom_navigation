import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

class SettingScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SettingScreen>
    with WidgetsBindingObserver {
  //init State
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this); //register observer lifcycle
    print('Run initState');
  }

  //Lifecycle App
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print('App is in Background mode');
    } else if (state == AppLifecycleState.resumed) {
      print('App is in Foreground mode');
    }
  }

  //build
  @override
  Widget build(BuildContext context) {
    print('Run build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Screen'),
        backgroundColor: colorTheme,
      ),
    );
  }

  //dispose
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); //remove observer lifcycle
    print('Run dispose');
  }
}
