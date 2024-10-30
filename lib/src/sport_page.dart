import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import './my_alerts.dart';

class SportQuiz extends StatelessWidget {
  const SportQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          elevation: 0.0,
          toolbarHeight: 70.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const HugeIcon(
              icon: HugeIcons.strokeRoundedArrowTurnBackward,
              color: Colors.black,
            ),
            tooltip: 'Exit From The App!',
            enableFeedback: true,
          ),
          title: const Text(
            'Sport Questions',
            style: TextStyle(
              fontFamily: 'LexendExa',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ), // End Of <Widget> Actions
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => reStartAlert(context),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          splashColor: Colors.grey.shade800,
          tooltip: 'Search Online Categories',
          enableFeedback: true,
          child: Icon(
            HugeIcons.strokeRoundedRepeat,
            color: Colors.grey.shade400,
            semanticLabel: 'repeat icon indicates starting aging',
          ),
        ),
      ),
    );
  }
}
