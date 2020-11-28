import 'package:C1O2/helpers/colors.dart';
import 'package:C1O2/helpers/text_theme.dart';
import 'package:C1O2/screens/home/startScreen.dart';
import 'package:flutter/material.dart';

class ReduceEmissionScreen extends StatelessWidget {
  static final routeName = "/reduce-carbon-footprint";

  List<Widget> getWidgetTree() {
    List reduceCarbonFootPrintmsgs = [
      {
        'icon': Icons.hot_tub,
        'title': 'Reduce emissions due to household activities',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Do not forget to switch off the lights or unplug your electronic devices when they are not in use',
          },
          {
            'icon': Icons.done_outline,
            'message': 'Lower the amount of energy used to pump,treat and heat water by washing your car less often, using climate-appropriate plants in garden',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Don\'t set thermostat too high or low. Install a programmable model to turn off the heat or air conditioning when you\'re not at home',
          },
        ]
      },
      {
        'icon': Icons.card_travel,
        'title': 'Reduce emissions due to your commutes',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Do not unnecessarily speed up or accelerate,it increases the mileage upto 33%, waste gas, money and increases carbon emission',
          },
          {
            'icon': Icons.done_outline,
            'message': 'When possible,walk or ride your bike in order to avoid carbon emission completely',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Don\'t buy a minivan or SUV if you don\'t need 4WD and/or will ocassionally need extra space',
          },
        ]
      },
      {
        'icon': Icons.fastfood,
        'title': 'Reduce emissions due to food activities',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Stop wasting food!',
          },
          {
            'icon': Icons.done_outline,
            'message': 'Eat low on the food chain',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Don\'t eat excess calories!',
          },
        ]
      },
    ];

    List<Widget> parentWidgetTree = [];

    for (var reduceEmissionData in reduceCarbonFootPrintmsgs) {
      List<Widget> widgetTree = [];

      widgetTree.add(
        SizedBox(
          height: 15,
        ),
      );

      Widget cardHeader = ListTile(
        leading: Icon(
          reduceEmissionData['icon'],
          color: ColorPallete.color3,
        ),
        title: CoolText(
          reduceEmissionData['title'],
          fontSize: 17,
        ),
      );

      widgetTree.add(cardHeader);

      List<Widget> sectionDivider = [
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 1,
            color: ColorPallete.color6,
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ];

      widgetTree = [...widgetTree, ...sectionDivider];

      for (var option in reduceEmissionData['options']) {
        Widget optionWidget = ListTile(
          leading: Icon(
            option['icon'],
            color: ColorPallete.color3,
          ),
          title: Text(
            option['message'],
            style: TextStyle(
              color: ColorPallete.color3,
            ),
          ),
        );

        widgetTree.add(optionWidget);
      }

      widgetTree.add(
        SizedBox(
          height: 10,
        ),
      );

      Widget parentWidget = Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: ColorPallete.cardBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetTree,
            ),
          ),
        ),
      );

      parentWidgetTree.add(parentWidget);
    }

    return parentWidgetTree;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   color: ColorPallete.cardBackground,
            //   child: SizedBox(
            //     height: MediaQuery.of(context).size.height / 6,
            //     width: double.infinity,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(10),
            //           child: CoolText(
            //             "Reduce your carbon footprint",
            //             fontSize: 18,
            //             letterSpacing: 1.1,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            ...getWidgetTree(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ColorPallete.cardBackground.withBlue(150),
        onPressed: () {
          Navigator.pushNamed(
            context,
            StartScreen.routeName,
          );
        },
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
