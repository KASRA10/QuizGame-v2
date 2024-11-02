import './question_structure.dart';
import './sport_questions_list.dart';
import './movie_questions_list.dart';
import './food_questions_list.dart';
import './technology_questions_list.dart';

class QuestionCenterIntelligence {
  late String _category;
  int _questionNumber = 0;
  int _questionRow = 1;
  bool _finishStatus = false;
  List<QuestionStructure> mainQuestionList = [];

  void getCategory(String category) {
    _category = category;

    if (_category == 'sport') {
      mainQuestionList = sportQuestionsList;
    } else if (_category == 'movie') {
      mainQuestionList == movieQuestionsList;
    } else if (_category == 'food') {
      mainQuestionList = foodQuestionsList;
    } else if (_category == 'technology') {
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
  }

  String nextQuestion() => mainQuestionList[_questionNumber].question;

  bool currentAnswer() => mainQuestionList[_questionNumber].answer;

  int getQuestionRow() => _questionRow;
}
