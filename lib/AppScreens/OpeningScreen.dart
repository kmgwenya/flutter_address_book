// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_address_book/AppScreens/MainScreen.dart';
import 'package:flutter_address_book/Providers/AuthProvider.dart';
import 'package:provider/provider.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  TextEditingController _confirmPasswordController= TextEditingController();
  bool signUp = true;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Welcome to your address book')),
      body: Container(
        height: _screenSize.height * 2,
        child: Column(
          children: <Widget>[
            //avatar img

            //Text('Enter email address'),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email address',
                      filled: true,
                      fillColor: Colors.white),
                  controller: _emailController),
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
                  controller: _passwordController),
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
                controller:  _confirmPasswordController,
                  ),
            ),
            /*RaisedButton(
              onPressed: (){

                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                });
              },
              child: Text('Submit'),
            ),*/
            RaisedButton(
              onPressed: () {

                if (signUp) {
                  //Provider sign up method
                  if(_passwordController.text == _confirmPasswordController.text){
                    context.read<AuthenticationProvider>().signUp(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                  }else {
                    showDialog(
                        context: context,
                        barrierDismissible: true, // user must tap button!
                        builder: (_) => AlertDialog(
                          title: Text('passwords do not match',style: TextStyle(color: Colors.red),),
                        )
                    );
                  }

                } else {
                  //Provider sign in method
                  context.read<AuthenticationProvider>().signIn(
                    email: _emailController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                }
              },
              child: signUp ? Text("Sign Up") : Text("Sign In"),
            ),

            //Sign up / Sign In toggler
            OutlineButton(
              onPressed: () {
                setState(() {
                  signUp = !signUp;
                });
              },
              child: signUp ? Text("Have an account? Sign In") : Text("Create an account"),
            )

          ],

        ),
        ),

      backgroundColor: Colors.cyan,
    );
  }
}


/*
class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  //Controllers for e-mail and password textfields.
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //Handling signup and signin
  bool signUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //e-mail textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ),

          //password textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
          ),

          //Sign in / Sign up button

    );

  }

}*/
