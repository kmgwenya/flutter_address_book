import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_address_book/Providers/FirestoreHelper.dart';
class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  TextEditingController _residentTextEditingController = TextEditingController();
  TextEditingController _addressTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

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
                  addAddress(firebaseUser.email,_addressTextEditingController.text,_residentTextEditingController.text);
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
