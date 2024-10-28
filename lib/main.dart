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
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 168,
                    height: 168,
                    child: Image.asset(
                      'images/orbitQuiz.png',
                      semanticLabel: 'An Orbit/earth having badge of Question',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      15.5,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Start',
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 115.5,
                          vertical: 10.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              25.0,
                            ),
                          ),
                          side: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ], // End Of Column Children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
