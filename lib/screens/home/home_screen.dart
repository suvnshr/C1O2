import 'package:C1O2/helpers/colors.dart';
import 'package:C1O2/screens/calculator/user_inputs.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Aayush Bisen',
                style: TextStyle(
                  color: ColorPallete.color4,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            GestureDetector(
              child: CustomCard(),
              onTap: () {
                print('Hello');
                Navigator.pushNamed(
                  context,
                  UserInputs.routeName,
                  arguments: 'id',
                );
              },
            ),
            SizedBox(height: 16),
            CustomCard(),
            SizedBox(height: 16),
            CustomCard(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorPallete.cardBackground,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/Electriccar2.gif',
              height: 150,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Text(
                    'Vehicles',
                    style: TextStyle(
                        color: ColorPallete.cardHeading,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  child: Text(
                    'Calculate your carbon footprint.',
                    style: TextStyle(
                      color: ColorPallete.cardHeading,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
