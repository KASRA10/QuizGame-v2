import 'package:flutter/foundation.dart';

import './question_structure.dart';
import './sport_questions_list.dart';
import './movie_questions_list.dart';
import './food_questions_list.dart';
import './technology_questions_list.dart';

class QuestionCenterIntelligence {
  late String category;
  int _questionNumber = 0;
  int _questionRow = 1;
  bool _finishStatus = false;
  late final List<QuestionStructure> mainQuestionList;
  int _numberOfTrue = 0;
  int _numberOfFalse = 0;

  QuestionCenterIntelligence({required category}) {
    category = category;
    if (category == 'sport') {
      mainQuestionList = sportQuestionsList;
    } else if (category == 'movie') {
      mainQuestionList == movieQuestionsList;
    } else if (category == 'food') {
      mainQuestionList = foodQuestionsList;
    } else if (category == 'technology') {
      mainQuestionList = technologyQuestionsList;
    } else {
      mainQuestionList;
    }
  }

  void nextQuestionNumber() {
    if (_questionNumber < mainQuestionList.length - 1) {
      _questionNumber++;
    } else if (_questionNumber == mainQuestionList.length) {
      _finishStatus = true;
    }
  }

  void nextNumberOfRow() {
    if (_questionNumber < mainQuestionList.length - 1) {
      _questionNumber++;
    }
  }

  bool endChecker() {
    if (_finishStatus == true) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    _questionRow = 1;
    _finishStatus = false;
    _numberOfTrue = 0;
    _numberOfFalse = 0;
  }

  String nextQuestion() => mainQuestionList[_questionNumber].question;
  bool currentAnswer() => mainQuestionList[_questionNumber].answer;
  int getQuestionRow() => _questionRow;
  int countNumberOfTrue() => _numberOfTrue++;
  int countNumberOfFalse() => _numberOfFalse++;
}
