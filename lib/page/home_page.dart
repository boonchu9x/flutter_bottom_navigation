import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/util/const.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _email = ''; //get text email
  final textEditingController = TextEditingController(); //editing controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: colorTheme,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: TextField(
                controller: textEditingController, //lấy text từ TextField
                onChanged: (text) {
                  this.setState(() {
                    _email = text; //get text từ TextField mỗi khi thay đổi
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Enter email',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              _email,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
