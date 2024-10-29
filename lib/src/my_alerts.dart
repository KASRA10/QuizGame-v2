import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// A Login Alert For Login Button
void myLoginAlert(BuildContext context) => Alert(
      context: context,
      image: Image.asset(
        'images/orbitQuiz.png',
        width: 68.0,
        height: 68.0,
      ),
      title: "LOGIN",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ).show();
