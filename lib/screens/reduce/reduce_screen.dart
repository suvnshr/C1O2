import 'package:C1O2/helpers/colors.dart';
import 'package:C1O2/helpers/text_theme.dart';
import 'package:flutter/material.dart';

class ReduceEmissionScreen extends StatelessWidget {
  static final routeName = "/reduce-carbon-footprint";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.background,
      body: Container(
        child: Text("Hello World !!"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ColorPallete.cardBackground,
        onPressed: () {},
        label: Text(
          "Home",
          style: TextStyle(
            color: ColorPallete.color3,
          ),
        ),
        icon: Icon(
          Icons.home,
          color: ColorPallete.color3,
        ),
      ),
    );
  }
}
