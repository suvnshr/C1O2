import 'package:flutter/material.dart';

import './user_input_questions.dart';

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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.red.shade800,
                      Colors.redAccent.shade400,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Text('Question'),
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
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            // ),
                          ),
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Invalid username!';
                          //   }
                          // },
                          // onSaved: (value) {
                          //   _authData['username'] = value;
                          // },
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
