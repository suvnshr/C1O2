import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flare_dart/actor.dart';

import '../result/result_screen.dart';
import './user_input_questions.dart';
import '../../helpers/colors.dart';

class UserInputs extends StatefulWidget {
  static const routeName = '/user-inputs';
  @override
  _UserInputsState createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {
  List answers = [];

  var index = 0;

  final _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as String;
    final size = MediaQuery.of(context).size;

    List foodQ = Provider.of<Questions>(context).foodQuestions;
    List travelQ = Provider.of<Questions>(context).travelQuestions;
    List waterQ = Provider.of<Questions>(context).waterQuestions;

    List questions = [];

    print(args);

    if (args == 'food') {
      questions = foodQ;
    } else if (args == 'travel') {
      questions = travelQ;
    } else {
      questions = waterQ;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: args == 'food'
              ? Stack(
                  children: [
                    Container(
                      color: ColorPallete.background,
                    ),
                    Positioned(
                      child: FlareActor(
                        'assets/flare/base_two_flow.flr',
                        animation: 'flow',
                        fit: BoxFit.cover,
                        color: ColorPallete.background,
                      ),
                    ),
                    if (index == 0 || index == 1)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: FlareActor(
                          'assets/flare/food_1.flr',
                          animation: 'flow',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    if (index == 2 || index == 3)
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.asset(
                          'assets/images/eat_1.png',
                        ),
                      ),
                    Positioned(
                      top: 150,
                      child: Container(
                        height: size.height,
                        width: size.width,
                        //decoration: BoxDecoration(color: ColorPallete.background),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0,
                                ),
                                child: Text(
                                  questions[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorPallete.color3,
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
                                  decoration: InputDecoration(
                                    hintText: '(In Grams)',
                                    hintStyle:
                                        TextStyle(color: ColorPallete.color4),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.trending_flat,
                                        color: ColorPallete.color3,
                                      ),
                                      onPressed: () {
                                        if (_answerController.text == '' ||
                                            _answerController is String) {
                                          return;
                                        }
                                        answers.add(_answerController.text);
                                        if (index == questions.length - 1) {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                            ResultScreen.routeName,
                                            arguments: answers,
                                          );
                                        } else {
                                          index++;
                                        }
                                        _answerController.text = '';
                                        setState(() {});
                                      },
                                    ),
                                    alignLabelWithHint: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 2,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    color: ColorPallete.color3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : args == 'travel'
                  ? Stack(
                      children: [
                        Container(
                          color: ColorPallete.background,
                        ),
                        Positioned(
                          child: FlareActor(
                            'assets/flare/base_one.flr',
                            animation: 'Flow',
                            fit: BoxFit.cover,
                          ),
                        ),
                        if (index == 0 || index == 2)
                          FlareActor(
                            'assets/flare/bicycle_flow.flr',
                            animation: 'flow',
                            alignment: Alignment.bottomCenter,
                          ),
                        if (index == 1)
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: size.height * 0.3,
                              child: Image.asset(
                                'assets/images/car.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        Positioned(
                          child: Container(
                            height: size.height,
                            width: size.width,
                            //decoration: BoxDecoration(color: ColorPallete.background),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0),
                                    child: Text(
                                      questions[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorPallete.color3,
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
                                      decoration: InputDecoration(
                                        hintText: '(In miles)',
                                        hintStyle: TextStyle(
                                            color: ColorPallete.color4),
                                        //enabledBorder: InputBorder.none,
                                        //filled: true,
                                        //fillColor: ColorPallete.background.withBlue(-200),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.trending_flat,
                                            color: ColorPallete.color3,
                                          ),
                                          onPressed: () {
                                            if (_answerController.text == '' ||
                                                _answerController is String) {
                                              return;
                                            }
                                            answers.add(_answerController.text);
                                            if (index == questions.length - 1) {
                                              Navigator.of(context)
                                                  .pushReplacementNamed(
                                                ResultScreen.routeName,
                                                arguments: answers,
                                              );
                                            } else {
                                              index++;
                                            }
                                            _answerController.text = '';
                                            setState(() {});
                                          },
                                        ),
                                        alignLabelWithHint: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 2,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: ColorPallete.color3,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Stack(
                      children: [
                        Container(
                          color: ColorPallete.background,
                        ),
                        Positioned(
                          child: FlareActor(
                            'assets/flare/base_water.flr',
                            animation: 'island01',
                            fit: BoxFit.cover,
                          ),
                        ),
                        if (index == 0 || index == 1 || index == 2)
                          FlareActor(
                            'assets/flare/watch_tv.flr',
                            animation: 'flow',
                            alignment: Alignment.bottomCenter,
                          ),
                        if (index == 3)
                          FlareActor(
                            'assets/flare/water_flow.flr',
                            animation: 'flow',
                            alignment: Alignment.bottomRight,
                            fit: BoxFit.fitWidth,
                          ),
                        Positioned(
                          child: Container(
                            height: size.height,
                            width: size.width,
                            //decoration: BoxDecoration(color: ColorPallete.background),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0),
                                    child: Text(
                                      questions[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorPallete.color3,
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
                                      decoration: InputDecoration(
                                        
                                        hintText: index == 3 ? '' : '(In Hrs)',
                                        hintStyle: TextStyle(
                                            color: ColorPallete.color4),
                                        //enabledBorder: InputBorder.none,
                                        //filled: true,
                                        //fillColor: ColorPallete.background.withBlue(-200),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.trending_flat,
                                            color: ColorPallete.color3,
                                          ),
                                          onPressed: () {
                                            if (_answerController.text == '' ||
                                                _answerController is String) {
                                              return;
                                            }
                                            answers.add(_answerController.text);
                                            if (index == questions.length - 1) {
                                              Navigator.of(context)
                                                  .pushReplacementNamed(
                                                ResultScreen.routeName,
                                                arguments: answers,
                                              );
                                            } else {
                                              index++;
                                            }
                                            _answerController.text = '';
                                            setState(() {});
                                          },
                                        ),
                                        alignLabelWithHint: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 2,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: ColorPallete.color3,
                                      ),
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
      ),
    );
  }
}
