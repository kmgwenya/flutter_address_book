import 'package:flutter/material.dart';
import 'package:flutter_address_book/AppScreens/EditAddressScreen.dart';
import 'package:flutter_address_book/AppScreens/MainScreen.dart';

class AddressEntry extends StatelessWidget {
  Address address;
  int index;
  AddressEntry(this.address);
  //AddressEntry(this.address,i);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Center(
          child: InkWell(
            child: Text(address.resident + ', ' + address.address),
            onDoubleTap: (){

                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditAddressScreen(this)));
            },
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

class Address {
  String resident;
  String address;
  String addressId;
  String Owner;

  Address(this.resident, this.address, this.addressId, this.Owner);
}
