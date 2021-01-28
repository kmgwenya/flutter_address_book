// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  TextEditingController _textEditingController;

  _OpeningScreenState() {
    _textEditingController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Welcome to you address book')),
      body: Container(
        child: Column(
          children: <Widget>[
            //avatar img
            CircleAvatar(
              backgroundImage: AssetImage('Images/pepe.jpg'),
              minRadius: 100,
            ),
            //Text('Enter email address'),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email address',
                      filled: true,
                      fillColor: Colors.white),
                  controller: _textEditingController),
            ),
            //Text('Enter password'),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  controller: _textEditingController),
            ),
            //Text('Confirm password'),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm password',
                      filled: true,
                      fillColor: Colors.white),
                  ),
            ),
            RaisedButton(
              onPressed: () => (){
                var txt = _textEditingController.value;
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
