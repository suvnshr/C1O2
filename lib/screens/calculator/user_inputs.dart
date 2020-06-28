import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import './user_input_questions.dart';
import '../../helpers/colors.dart';

class UserInputs extends StatefulWidget {
  static const routteNAme = '/user-inputs';
  @override
  _UserInputsState createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {
  // Map<String, String> answers = {
  //   'Question0': '',
  //   'Question1': '',
  //   'Question2': '',
  //   'Question3': '',
  // };
  List answers = [];

  var index = 0;

  final _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    final size = MediaQuery.of(context).size;

    List foodQ = Provider.of<Questions>(context).foodQuestions;
    List travelQ = Provider.of<Questions>(context).travelQuestions;
    List waterQ = Provider.of<Questions>(context).waterQuestions;

    List questions = [];

    if (args == 'food') {
      questions = foodQ;
    } else if (args == 'travel') {
      questions = travelQ;
    } else {
      questions = waterQ;
    }

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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          foodQ[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorPallete.color7,
                            fontSize: 20,
                          ),
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
                          controller: _answerController,
                          // onChanged: (){

                          // },
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: ColorPallete.background.withBlue(-200),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.trending_flat,
                                color: ColorPallete.color4,
                              ),
                              onPressed: () {
                                answers.add(_answerController.text);
                                if (index < foodQ.length) {
                                  index += 1;
                                } else if (index == foodQ.length) {
                                  Navigator.of(context)
                                      .pushNamed('', arguments: answers);
                                }
                                setState(() {});
                                print(index);
                                print(answers);
                              },
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
