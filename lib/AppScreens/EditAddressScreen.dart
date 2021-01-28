import 'package:flutter/material.dart';
import 'package:flutter_address_book/CustomWidgets/AddressWidget.dart';

class EditAddressScreen extends StatefulWidget {
  AddressEntry _addressEntry;
  EditAddressScreen(this._addressEntry);
  @override
  _EditAddressScreenState createState() => _EditAddressScreenState(_addressEntry);
}

class _EditAddressScreenState extends State<EditAddressScreen> {

  TextEditingController _residentTextEditingController = TextEditingController();
  TextEditingController _addressTextEditingController = TextEditingController();
  AddressEntry _addressEntry;
  _EditAddressScreenState(AddressEntry addressEntry) {
    _addressEntry = addressEntry;
    _residentTextEditingController.value =   TextEditingValue(text:_addressEntry.address.resident);
    _addressTextEditingController.value =   TextEditingValue(text:_addressEntry.address.address);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit address'),
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
                  _addressEntry.address.resident = _residentTextEditingController.text;
                  _addressEntry.address.address = _addressTextEditingController.text;
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
