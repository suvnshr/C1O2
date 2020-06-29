import 'package:C1O2/helpers/colors.dart';
import 'package:C1O2/screens/calculator/user_inputs.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

const TextStyle kTextStyle = TextStyle(
  fontSize: 24.0,
  color: ColorPallete.color3,
  shadows: [
    Shadow(
      color: ColorPallete.color3,
      blurRadius: 3,
      offset: Offset(
        0.9,
        0.9,
      ),
    ),
    Shadow(
      color: ColorPallete.color3,
      blurRadius: 3,
      offset: Offset(
        1.2,
        1.2,
      ),
    ),
  ],
);

class StartScreen extends StatelessWidget {
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: FlareActor(
                  'assets/flare/WorldSpin.flr',
                  animation: 'roll',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TypewriterAnimatedTextKit(
                  totalRepeatCount: 3,
                  speed: Duration(seconds: 1),
                  text: ['Hey there !', 'Make a difference!', 'Start today!'],
                  textStyle: kTextStyle.copyWith(
                    fontFamily: "Orbitron",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Know your share in world carbon footprint!',
                  style: kTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomCard(
                'Commute',
                'assets/images/finalcar.png',
                'travel',
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomCard(
                'Household',
                'assets/images/finaltv.png',
                'water',
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomCard(
                'Food',
                'assets/images/Cooking-pana.png',
                'food',
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String arg;
  final String routeName = UserInputs.routeName;

  CustomCard(
    this.title,
    this.image,
    this.arg,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          routeName,
          arguments: arg,
        );
      },
      child: Container(
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
                image,
                height: 130,
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
                    child: Text(title,
                        style: kTextStyle.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Container(
                    child: Text(
                      'Calculate your carbon footprint.',
                      style: TextStyle(
                        color: ColorPallete.cardHeading,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

RichText myText = RichText(
    text: TextSpan(
  children: [
    TextSpan(
      text: 'Hey there! ',
      style: kTextStyle.copyWith(
        fontFamily: "Orbitron",
      ),
    ),
    TextSpan(
      text: '👋',
      style: TextStyle(fontSize: 20),
    ),
  ],
));
