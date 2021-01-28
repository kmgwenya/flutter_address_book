
import 'package:flutter/material.dart';
import 'package:flutter_address_book/AppScreens/OpeningScreen.dart';
import 'package:flutter_address_book/CustomWidgets/AddressWidget.dart';

import 'AddAddress.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address book'),

      ),
      body: ListView(
        children: <Widget>[

              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: (){

                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  });
                },
                child: Icon(Icons.search),
              ),



          AddressEntry(Address('john hannes vdm','3 dan pie naar houd pta 5553','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),
          AddressEntry(Address('jannes vdm','3 krummel houd pta 0188','','')),



        ],

      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddAddressScreen()),
          );
        });
      },
        backgroundColor: Colors.blueAccent,tooltip: 'Add new address',child: Icon(Icons.add),),
      backgroundColor: Colors.cyan,
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: 'Acc',
        ),
      ],
      ),
    );
  }
}
