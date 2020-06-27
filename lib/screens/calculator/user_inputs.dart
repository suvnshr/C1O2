import 'package:flutter/material.dart';

class UserInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Column(
                  children: [
                    Positioned(
                      child: Text('Question'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
