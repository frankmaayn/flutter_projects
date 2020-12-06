import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quizzler/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = new QuizBrain();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void checkAnswer(bool checkUserAnswer) {
    if (quizBrain.getQuestionState() == true &&
        quizBrain.getQuizEndStatus() != true) {
      bool check = quizBrain.getQuestionAnswer();

      if (check == checkUserAnswer) {
        quizBrain.addPoint();
      } else {
        // do nothing
      }
      setState(() {
        if (quizBrain.getQuestionNumber() < quizBrain.getQuestionLength() - 1) {
          quizBrain.nextQuestion();
        } else {
          Alert(
                  context: context,
                  title: "Quiz is finished!",
                  desc: "You scored: ${quizBrain.getScore() * 100}%")
              .show();
          quizBrain.quizEnd();
        }
      });
    } else {
      setState(() {
        Alert(
                context: context,
                title: "Quiz has ended",
                desc: "App will reset the score")
            .show();
        quizBrain.reset();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: CircularPercentIndicator(
            progressColor: Colors.cyan,
            backgroundColor: Colors.grey,
            lineWidth: 20,
            percent: quizBrain.getScore(),
            radius: 220,
            animation: true,
            animateFromLastPercent: true,
            center: Text(
              'Score\n${quizBrain.getScore() * 100} %',
              style: GoogleFonts.bungee(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        //question section
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: GoogleFonts.sansita(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
        //true section
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        //false section
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.lightBlue,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        //result section
      ],
    );
  }
}
