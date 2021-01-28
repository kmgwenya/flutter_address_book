import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  TextEditingController _residentTextEditingController = TextEditingController();
  TextEditingController _addressTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Enter new address'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Resident Name and Surname',
                      filled: true,
                      fillColor: Colors.white),
                  controller: _residentTextEditingController),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Address',
                      filled: true,
                      fillColor: Colors.white),
                  controller: _addressTextEditingController),
            ),
            RaisedButton(
              onPressed: (){

                setState(() {
                  Navigator.pop(
                    context
                  );
                });
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
