import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:hugeicons/hugeicons.dart';
import './app_toast_message.dart';

// A Login Alert For Login Button
void myLoginAlert(BuildContext context) => Alert(
      context: context,
      closeIcon: Icon(
        Icons.close_rounded,
        color: Colors.red,
        semanticLabel: 'cross - x Icon Indicated Exit the Current Window',
      ),
      image: Image.asset(
        'images/login_icon.png',
        width: 68.0,
        height: 68.0,
        semanticLabel:
            'A arrow points A circle (like Main Earth Image) to enter an account',
      ),
      title: "LOGIN",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(
                HugeIcons.strokeRoundedUserCircle,
                semanticLabel: 'user person account/ profile Icon',
              ),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(
                HugeIcons.strokeRoundedLockPassword,
                semanticLabel: 'lock/ password Icon',
              ),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () {
            showAppToast(
              'Coming Soon...!'.toUpperCase(),
            );
            sleep(
              Duration(
                seconds: 4,
              ),
            );
            Navigator.pop(
              context,
            );
          },
          color: Colors.black,
          child: Text(
            "SignIn",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'LexendExa',
            ),
          ),
        ),
      ],
    ).show();
// End Login Alert Button