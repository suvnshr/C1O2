import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Hey there',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You can make a difference',
              ),
              SizedBox(
                height: 20,
              ),
              CalculateCard(
                name: 'Food',
              ),
              CalculateCard(
                name: 'Electricity',
              ),
              CalculateCard(
                name: 'Vehicles',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalculateCard extends StatelessWidget {
  final String name;
  final Image image;

  const CalculateCard({Key key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        onTap: () {
          print('Navigating to $name');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$name'),
              Text('Calculate your footprint'),
            ],
          ),
        ),
      ),
    );
  }
}
