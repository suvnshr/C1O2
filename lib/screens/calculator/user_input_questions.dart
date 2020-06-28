import 'package:flutter/material.dart';

class Questions with ChangeNotifier {
  List _foodQuestions = [
    'Question',
    'Question',
    'Question',
    'Question',
  ];

  List _waterQuestions = [
    'Question',
    'Question',
    'Question',
    'Question',
  ];

  List _travelQuestions = [
    'Question',
    'Question',
    'Question',
    'Question',
  ];

  get foodQuestions {
    return _foodQuestions;
  }

  get travelQuestions {
    return _travelQuestions;
  }

  get waterQuestions {
    return _waterQuestions;
  }
}
