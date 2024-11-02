import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import './my_alerts.dart';
import './question_center_intelligence.dart';

class FoodQuiz extends StatefulWidget {
  const FoodQuiz({super.key});

  @override
  State<FoodQuiz> createState() => _FoodQuizState();
}

class _FoodQuizState extends State<FoodQuiz> {
  QuestionCenterIntelligence mainFood =
      QuestionCenterIntelligence(category: 'food');

  void checkAnswer(bool userAnswer) {
    setState(() {
      if (mainFood.endChecker() == true) {
        endAlert(context);
        mainFood.reset();
        mainFood.getFalseNumber();
        mainFood.getTrueNumber();
      } else {
        if (userAnswer == mainFood.currentAnswer()) {
          mainFood.trueAnswer();
        } else {
          mainFood.falseAnswer();
        }
      }
    });
  } // End Of CheckUser Answer

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
            'Food Questions',
            style: TextStyle(
              fontFamily: 'LexendExa',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ), // End Of <Widget> Actions
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/TimeLoadingAnimation.gif',
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(
                  25.0,
                ),
                child: Text(
                  '${mainFood.getQuestionRow()}) ${mainFood.nextQuestion()}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'LexendExa',
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        checkAnswer(false);
                        setState(() {
                          mainFood.nextQuestionNumber();
                          mainFood.nextNumberOfRow();
                        });
                      },
                      iconAlignment: IconAlignment.end,
                      icon: Icon(
                        HugeIcons.strokeRoundedCheckUnread03,
                        color: Colors.white,
                        semanticLabel:
                            'Cross/ close - checked Icon demonstrate false answer',
                      ),
                      label: Text(
                        'False',
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shadowColor: Colors.red,
                        elevation: 4.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 35.5,
                          vertical: 10.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        checkAnswer(true);
                        setState(() {
                          mainFood.nextQuestionNumber();
                          mainFood.nextNumberOfRow();
                        });
                      },
                      iconAlignment: IconAlignment.end,
                      icon: Icon(
                        HugeIcons.strokeRoundedCheckmarkBadge01,
                        color: Colors.white,
                        semanticLabel:
                            'Cross/ close - checked Icon demonstrate false answer',
                      ),
                      label: Text(
                        'True',
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shadowColor: Colors.green,
                        elevation: 4.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 35.5,
                          vertical: 10.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ], // End Of Inner Row CHildren
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Number Of False: ${mainFood.getFalseNumber()}',
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Number Of True: ${mainFood.getTrueNumber()}',
                        style: TextStyle(
                          fontFamily: 'LexendExa',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ], // End Of Inner Row CHildren
                ),
              ),
            ], // Children of Column
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Alert(
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
                onPressed: () {
                  setState(() {
                    mainFood.middleReset();
                    mainFood.getFalseNumber();
                    mainFood.getTrueNumber();
                  });
                  Navigator.pop(context);
                },
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
          ).show(),
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
