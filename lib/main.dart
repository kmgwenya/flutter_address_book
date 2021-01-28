import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_address_book/AppScreens/OpeningScreen.dart';
import 'package:flutter_address_book/Providers/AuthProvider.dart';
void main() {
  //call method to check auth
  runApp(MaterialApp(
    title: 'address book',
    home: OpeningScreen(),
  ));
}