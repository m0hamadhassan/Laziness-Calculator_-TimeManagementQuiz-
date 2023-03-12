import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final Function resetHandler;
  Start(this.resetHandler);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Text(
            "Answer the following 15 questions to Identify your time managent skills and Calculate your Laziness level\n",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetHandler,
            child: Text('Start Quiz !',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ]));
  }
}
