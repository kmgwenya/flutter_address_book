import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';



  //CollectionReference users = FirebaseFirestore.instance.collection('Address');

  Future<void> addAddress(String email,String address,String fullName) {
    var users = FirebaseFirestore.instance.collection('Address').doc(email);
   // users.get();
    // Call the user's CollectionReference to add a new user
    return users
        .set({'addresses':[
      {'full_name': fullName, // John Doe
        'address': address, // Stokes and Sons
      }
    ]


    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
