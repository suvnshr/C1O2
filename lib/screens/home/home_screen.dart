import 'package:flutter/material.dart';

import '../calculator/user_inputs.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: UserInputs(),
      // Container(
      //   child: Center(
      //     child: Text("Hello World !!!"),
      //   ),
      // ),
    );
  }
}
