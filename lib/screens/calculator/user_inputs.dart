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
                          color: ColorPallete.color7,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      child: Container(
                        width: size.width * 0.4,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: ColorPallete.background.withBlue(-200),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.trending_flat,
                                color: ColorPallete.color4,
                              ),
                              onPressed: () {},
                            ),
                            //hintText: 'Answer',
                            // labelText: 'Answer',
                            // labelStyle: TextStyle(
                            //   color: ColorPallete.color3,
                            //   fontSize: 20,
                            // ),
                            alignLabelWithHint: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 2,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          validator: (value) {
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
