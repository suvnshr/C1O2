import 'package:C1O2/screens/reduce/reduce_screen.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import './screens/result/result_screen.dart';
import './screens/home/home_screen.dart';
import './screens/calculator/user_inputs.dart';
import './screens/calculator/user_input_questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Questions())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'C1O2',
        theme: ThemeData(
          fontFamily: "Orbitron",
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: ReduceEmissionScreen.routeName,
        // home: ResultScreen(
        //         activityName: "Household",
        //         userEmission: 70,
        //         averageEmission: 50,
        //       ),//HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          UserInputs.routeName: (context) => UserInputs(),
          ReduceEmissionScreen.routeName: (context) => ReduceEmissionScreen(),
          ResultScreen.routeName: (context) => ResultScreen(
                activityName: "Household",
                userEmission: 70,
                averageEmission: 50,
              ),
        },
      ),
    );
  }
}
