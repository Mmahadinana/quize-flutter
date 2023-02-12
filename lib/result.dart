import 'package:flutter/material.dart';

class Result extends StatelessWidget{
final int resultScore;
final VoidCallback resetQuize;
Result(this.resultScore, this.resetQuize);

String get resultsPhrase{

  String resultText = 'Well Done! You have score.';

  if (resultScore < 16) {
    resultText = 'You are so bad!';
    // resultText = 'You are so bad!';
  }else if (resultScore < 25) {
    resultText = 'You are strange!';
  }else if(resultScore < 35){
    resultText = 'Pretty and likable!';
  }else{
    resultText = 'You are awesome and innocent! ';
  }
  return resultText  ;
}
  @override
  Widget build(BuildContext cxt){
    return   Center(
      child: Column(
        children: <Widget> [
          Text(
            resultsPhrase,
            style: TextStyle(
              fontSize: 36,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,),
          Text(
            'You have Scored: ' + resultScore.toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan)),
              child:Text('Reset Button'),
              onPressed: resetQuize),
        ],
      )
    );
  }
}