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
      image: Image.asset(
        'images/setting_image.png',
        semanticLabel: 'Setting icon indicates Accessing To Options',
        width: 68.0,
        height: 68.0,
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

// Search Alert Alert
void searchAlert(BuildContext context) => Alert(
      context: context,
      closeIcon: Icon(
        Icons.subdirectory_arrow_left_rounded,
        color: Colors.red,
        semanticLabel: 'Exit Icon With Left Back Icon',
      ),
      title: 'Online Search',
      image: Image.asset(
        'images/search_alert_image.png',
        semanticLabel: 'Quiz Search Image',
        width: 68.0,
        height: 68.0,
      ),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: SizedBox(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    HugeIcons.strokeRoundedSearchCircle,
                    semanticLabel: 'Search Icon',
                  ),
                  labelText: 'Search Categories',
                ),
              ),
            ),
          ),
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
// End Of Search Alert

// Restart Alert
void reStartAlert(BuildContext context) => Alert(
      context: context,
      title: 'Reset Game!',
      image: Image.asset(
        'images/reset_game.png',
        semanticLabel: 'Two Arrows Indicates Restart The Game',
        width: 68.0,
        height: 68.0,
      ),
      content: Column(
        children: [
          Text(
            'Are You Sure To Want Reset The Game?!',
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
            "Yes!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'LexendExa',
            ),
          ),
        ),
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
          child: Text(
            "No",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'LexendExa',
            ),
          ),
        ),
      ], // List Of Buttons
    ).show();
// End Of Restart Alert

// End Alert
void endAlert(context) => Alert(
      context: context,
      type: AlertType.none,
      title: "Game Is Over!",
      desc: "All Questions Have Been Answered!",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          width: 120,
          color: Colors.black,
          child: Text(
            "Try Again",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    ).show();
//End Of End Alert