import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showAppToast(String message) => Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      fontSize: 18,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
    ); // End Of void showAppToast