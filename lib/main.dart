import 'package:flutter/material.dart';

import './quize.dart';
import './result.dart';
void main() {
    runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':'What\'s your favourite color?',
      'answers':[{'text':'Black','score': 5}, {'text':'Green', 'score': 10}, {'text':'Blue', 'score': 15}]
    },
    {
      'questionText':'What\'s your favourite animal',
      'answers':[{'text':'Bafalo','score': 5}, {'text':'Cheeter','score': 10}, {'text':'Lion','score': 15}]
    },
    {
      'questionText':'Who\'s your favourite instructor',
      'answers':[{'text':'Tebogo','score': 5},{'text':'Phindi','score': 10}, {'text':'Rosy','score': 15}]
    },

  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuize(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });


  }
  void _answerQuestion(int score){

    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    if(_questionIndex >= _questions.length ) {
      print(_questionIndex);
    }
  }
  @override
   Widget build(BuildContext ctx) {

        return MaterialApp(home: Scaffold(
            appBar: AppBar(title: Text("Rosy first App"),
            ),
              body: _questionIndex < _questions.length ? Quize(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex):
            Result(_totalScore, _resetQuize)
          ),
        );
    }
}

