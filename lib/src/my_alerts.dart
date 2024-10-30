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

// SettingAlert
void settingAlert(BuildContext context) => Alert(
      context: context,
      closeIcon: Icon(
        Icons.exit_to_app,
        color: Colors.red,
        semanticLabel: 'Exit Icon With Left Back Icon',
      ),
      title: 'Setting',
      image: Icon(
        HugeIcons.strokeRoundedSettingError03,
        color: Colors.grey.shade900,
        size: 150,
        semanticLabel: 'Setting Icon Indicates Setting Area',
      ),
      content: Column(
        children: [
          Text(
            'This Feature Is Not Available Right Now!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'LexendExa',
              fontSize: 16,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ], // End Of Children
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
          child: Text(
            "OK!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'LexendExa',
            ),
          ),
        ),
      ],
    ).show();
// End Of Setting ALert