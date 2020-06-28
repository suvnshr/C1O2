import 'package:flutter/material.dart';

import './user_input_questions.dart';
import '../../helpers/colors.dart';

class UserInputs extends StatelessWidget {
  List questions = [];
  Map<String, String> answers = {
    'Question1': '',
  };

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(color: ColorPallete.background),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Text(
                        'Question',
                        style: TextStyle(
                          color: ColorPallete.cardHeading,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      child: Container(
                        width: size.width * 0.15,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Answer',
                          ),
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          validator: ( value) {
                            if (value.isEmpty) {
                              return 'enter a value';
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
