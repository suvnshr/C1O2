import 'package:flutter/material.dart';

class Questions with ChangeNotifier {
  List _foodQuestions = [
    "How much Meat, Fish and Eggs do you consume?",
    'How much Grains and Baked Goods do you consume?',
    'How much Dairy Products do you consume?',
    'How much Fruits and Vegetables do you consume?',
  ];

  List _waterQuestions = [
    'For how much hours Fan was used?',
    'For how much hours T.V. was used?',
    'For how much hours Fridge was used?',
    'How many liters of Water is consumed?',
  ];

  List _travelQuestions = [
    'What is the distance travelled by bike?',
    'What is the distance travelled by Car?',
    'What is the distance travelled by Bicycle?',
    
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
