import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './start.dart';

void main() => runApp(MyApp());

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
      'questionText':
          'Are the tasks your work on during the day the ones with highest priority ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you find yourself completing tasks at the last minute ?',
      'answers': [
        {'text': 'Not at all', 'score': 5},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 2},
        {'text': 'Very often', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you set aside time for planing and scheduling ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you know how much time you are spending on the various jobs you do ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'How often do you find yourself dealing with interruptions ?',
      'answers': [
        {'text': 'Not at all', 'score': 5},
        {'text': 'Rarely', 'score': 4},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 2},
        {'text': 'Very often', 'score': 1},
      ],
    },
    {
      'questionText':
          'Do you use goal setting to decide what tasks and activities you should work on ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you leave contigency time in your schedule to deal with "the unexpected" ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you know whether the tasks you are working on are high, medium, or low value ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'When you are given a new assignment, do you analyze it for importance and prioritize it accordingly ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText': 'Are you stressed about deadlines and commitments?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do distractions often keep you from working on critical tasks?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you have to take work home, in order to get it done ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you prioritize your "TO DO" list or Action Programe ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Do you regularly confirm your priorities with your boss ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
    {
      'questionText':
          'Before you take on a task, do you check that the results will bw worth the time put in ?',
      'answers': [
        {'text': 'Not at all', 'score': 1},
        {'text': 'Rarely', 'score': 2},
        {'text': 'Some times', 'score': 3},
        {'text': 'Often', 'score': 4},
        {'text': 'Very often', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 100;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time Management Quiz', textAlign: TextAlign.center),
        ),
        body: (_questionIndex == 100)
            ? Start(_resetQuiz)
            : _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuiz),
      ),
      theme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
