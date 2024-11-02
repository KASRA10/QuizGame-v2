import './question_structure.dart';
import './sport_questions_list.dart';
import './food_questions_list.dart';
import './technology_questions_list.dart';

class QuestionCenterIntelligence {
  late final String category;
  int _questionNumber = 0;
  int _questionRow = 1;
  bool _finishStatus = false;
  late final List<QuestionStructure> mainQuestionList;
  int _falseNumbers = 0;
  int _trueNumbers = 0;

  QuestionCenterIntelligence({required this.category}) {
    if (category == 'sport') {
      mainQuestionList = sportQuestionsList;
    } else if (category == 'food') {
      mainQuestionList = foodQuestionsList;
    } else if (category == 'technology') {
      mainQuestionList = technologyQuestionsList;
    }
  }

  void nextQuestionNumber() {
    if (_questionNumber < mainQuestionList.length - 1) {
      _questionNumber++;
    } else if (_questionNumber == mainQuestionList.length - 1) {
      _finishStatus = true;
    }
  }

  void nextNumberOfRow() {
    if (_questionRow < mainQuestionList.length - 1) {
      _questionRow++;
    }
  }

  bool endChecker() {
    if (_finishStatus == true) {
      return true;
    } else {
      return false;
    }
  }

  void trueAnswer() {
    _trueNumbers++;
  }

  void falseAnswer() {
    _falseNumbers++;
  }

  void reset() {
    _questionNumber = -1;
    _questionRow = 0;
    _finishStatus = false;
    _falseNumbers = 0;
    _trueNumbers = 0;
  }

  void middleReset() {
    _questionNumber = 0;
    _questionRow = 1;
    _finishStatus = false;
    _falseNumbers = 0;
    _trueNumbers = 0;
  }

  String nextQuestion() => mainQuestionList[_questionNumber].question;
  bool currentAnswer() => mainQuestionList[_questionNumber].answer;
  int getQuestionRow() => _questionRow;

  int getFalseNumber() => _falseNumbers;
  int getTrueNumber() => _trueNumbers;
}
