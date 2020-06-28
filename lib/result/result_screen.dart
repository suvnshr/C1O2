import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class ResultScreen extends StatelessWidget {
  final double userEmission;
  final double averageEmission;
  final String activityName;

  Text toolTipLabel = Text(
    " tonnes CO2",
    style: TextStyle(fontSize: 20),
  );

  // returns the percentage change between 
  // the emission by user and average emission of that category
  double getChangePercentage() {
    double changePercent =  ((userEmission - averageEmission) / averageEmission) * 100;

    return changePercent >= 0 ? changePercent : -changePercent; 
  }


  ResultScreen(
      {Key key, this.activityName, this.userEmission, this.averageEmission})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterSliderHandler _leftHandler, _rightHandler;

    FlutterSliderHandler userHandler = FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Material(
        type: MaterialType.canvas,
        color: Colors.lightGreen,
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.person,
            size: 25,
            color: Colors.green[800],
          ),
        ),
      ),
    );

    FlutterSliderHandler avgHandler = FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Material(
        type: MaterialType.canvas,
        color: Colors.lightGreen,
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Icon(Icons.nature_people, size: 25, color: Colors.green[900]),
        ),
      ),
    );

    List<double> _values = [userEmission, averageEmission];
    Color _trackBarColor = Colors.green.withOpacity(0.5);
    _leftHandler = userHandler;
    _rightHandler = avgHandler;
    String _changePercentageSuffix = "less";

    double changePercent = getChangePercentage();

    if (userEmission > averageEmission) {
      _values = [averageEmission, userEmission];
      _trackBarColor = Colors.red.withOpacity(0.5);
      _leftHandler = avgHandler;
      _rightHandler = userHandler;
      _changePercentageSuffix = "more";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Carbon Footprint"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 2,
              child: ListTile(
                title: Text(
                  "Your daily carbon footprint due to $activityName activities is $userEmission tonnes CO2",
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                ),
                leading: Icon(Icons.nature_people),
              ),
            ),
            Card(
              elevation: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "You are emitting $changePercent% $_changePercentageSuffix carbon than a average person",
                    ),
                  ),
                  FlutterSlider(
                    values: _values,
                    rangeSlider: true,
                    disabled: true,
                    min: 0,
                    max: 100,
                    trackBar: FlutterSliderTrackBar(
                      activeDisabledTrackBarColor: _trackBarColor,
                    ),
                    handler: _leftHandler,
                    rightHandler: _rightHandler,
                    tooltip: FlutterSliderTooltip(
                      alwaysShowTooltip: true,
                      textStyle: TextStyle(fontSize: 25),
                      leftSuffix: toolTipLabel,
                      rightSuffix: toolTipLabel,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Learn how to reduce your carbon footprint",
                ),
                subtitle: Text("Make a difference"),
                leading: Icon(Icons.info_outline),
                trailing: Icon(Icons.chevron_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}
