import 'package:flutter/material.dart';
import 'package:learn_flutter_app/util/question_brain.dart';
import 'package:learn_flutter_app/util/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:audioplayers/audio_cache.dart';

QuestionBrain questionBrain = QuestionBrain();

class QuizScreen extends StatefulWidget {
  static String id = 'quiz_screen';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int scoreKeeper = 0;

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = questionBrain.getQuestionRightAnswer();

    if (userPickedAnswer == correctAnswer) {
      playSound('sound1.wav');
      scoreKeeper++;
    } else {}
    setState(() {
      questionBrain.nextQuestion();
    });
  }

  void playSound(String soundFile) {
    final player = AudioCache();
    player.play(soundFile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Score: $scoreKeeper',
                style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              textColor: Colors.black,
              color: Colors.white,
              child: Text(
                questionBrain.getQuestionAnswer1(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(questionBrain.getQuestionAnswer1());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              color: Colors.white,
              child: Text(
                questionBrain.getQuestionAnswer2(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(questionBrain.getQuestionAnswer2());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              textColor: Colors.black,
              color: Colors.white,
              child: Text(
                questionBrain.getQuestionAnswer3(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(questionBrain.getQuestionAnswer3());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              color: Colors.white,
              child: Text(
                questionBrain.getQuestionAnswer4(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                checkAnswer(questionBrain.getQuestionAnswer4());
              },
            ),
          ),
        ),
      ],
    ));
  }
}
