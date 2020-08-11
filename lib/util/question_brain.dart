import 'question.dart';

class QuestionBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'true is correct', 'true', 'true', 'false', 'don\'t click', 'nope'),
    Question('false is correct', 'false', 'true', 'false', 'hm', 'mh'),
    Question('Old McDonald had a ', 'farm', 'table', 'chair', 'farm', 'car'),
    Question(
        'This is a ', 'question', 'banana', 'question', 'ofgodfg', 'kjdfngo'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      /*isFinished();*/
      _questionNumber = 0;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionRightAnswer() {
    return _questionBank[_questionNumber].questionRightAnswer;
  }

  String getQuestionAnswer1() {
    return _questionBank[_questionNumber].questionAnswer1;
  }

  String getQuestionAnswer2() {
    return _questionBank[_questionNumber].questionAnswer2;
  }

  String getQuestionAnswer3() {
    return _questionBank[_questionNumber].questionAnswer3;
  }

  String getQuestionAnswer4() {
    return _questionBank[_questionNumber].questionAnswer4;
  }

  /*bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      _questionNumber = 0;
      return true;
    } else {
      return false;
    }
  }*/
}
