import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class ResultScreen extends StatelessWidget {
  final double userEmission;
  final double averageEmission;

  Text toolTipLabel = Text(
    " tonnes CO2",
    style: TextStyle(fontSize: 20),
  );

  ResultScreen({Key key, this.userEmission, this.averageEmission})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  "Your daily carbon footprint due to _houehold_ activities is 2 tonnes CO2",
                  // style: TextStyle(fontSize: 18),
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
                      "You are emitting 30% less carbon than a average person",
                      // style: TextStyle(fontSize: 18),
                    ),
                  ),
                  FlutterSlider(
                    values: [userEmission, averageEmission],
                    rangeSlider: true,
                    disabled: true,
                    min: 0,
                    max: 100,
                    trackBar: FlutterSliderTrackBar(
                      activeDisabledTrackBarColor:Colors.green.withOpacity(0.5),
                    ),
                    handler: FlutterSliderHandler(
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
                    ),
                    rightHandler: FlutterSliderHandler(
                      decoration: BoxDecoration(),
                      child: Material(
                        type: MaterialType.canvas,
                        color: Colors.lightGreen,
                        elevation: 3,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.nature_people,
                              size: 25, color: Colors.green[900]),
                        ),
                      ),
                    ),
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
                  // style: TextStyle(fontSize: 18),
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
