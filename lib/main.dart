import 'dart:io';

import 'package:flutter/material.dart';
import './src/app_toast_message.dart';
import 'package:hugeicons/hugeicons.dart';

void main() => runApp(const QuizGame());

class QuizGame extends StatelessWidget {
  const QuizGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 70.0,
            centerTitle: true,
            leading: IconButton(
              onPressed: () => exit(0),
              icon: const HugeIcon(
                icon: HugeIcons.strokeRoundedArrowTurnBackward,
                color: Colors.black,
              ),
              tooltip: 'Exit From The App!',
              enableFeedback: true,
            ),
            title: const Text(
              'Quiz Time',
              style: TextStyle(
                fontFamily: 'LexendExa',
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => showAppToast(
                  'coming soon...'.toUpperCase(),
                ),
                icon: const HugeIcon(
                  icon: HugeIcons.strokeRoundedUserAccount,
                  color: Colors.black,
                ),
                tooltip: 'Go To Account Center',
                enableFeedback: true,
              )
            ], // End Of <Widget> Actions
          ),
        ),
      ),
    );
  }
}
