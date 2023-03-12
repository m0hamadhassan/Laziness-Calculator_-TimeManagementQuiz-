import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore >= 70) {
      resultText = '\nYou are managing your time very effectively, Boss\n';
    } else if (resultScore < 65 && resultScore >= 46) {
      resultText = '\nYou are managing your time very effectively\n';
    } else if (resultScore <= 46 && resultScore >= 31) {
      resultText =
          '\nYou are goode at some things, but there is room for improvement elsewhere';
    } else if (resultScore < 30) {
      resultText =
          '\nOuch...\nThe good news is that you\'ve got a great opportunity to improve your effectiveness at work, and your long-term success !.';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          "\n Your Level of \nlaziness is " +
              (((75 - resultScore) / 60) * 100).toInt().toString() +
              "% \n",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz !',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        )
      ],
    ));
  }
}
