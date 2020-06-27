import 'package:flutter/material.dart';

class UserInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 10,
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Text('Question'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      child: Container(
                        width: size.width * 0.15,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Answer',
                            // border: OutlineInputBorder(
                            //   sborderRadius: BorderRadius.circular(30),
                            // ),
                          ),
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Invalid username!';
                          //   }
                          // },
                          // onSaved: (value) {
                          //   _authData['username'] = value;
                          // },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Text('Question'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      child: Container(
                        width: size.width * 0.15,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Answer',
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            // ),
                          ),
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Theme.of(context).primaryColor),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Invalid username!';
                          //   }
                          // },
                          // onSaved: (value) {
                          //   _authData['username'] = value;
                          // },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 30,
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: Text('Question'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      child: Container(
                        width: size.width * 0.15,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Answer',
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            // ),
                          ),
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Invalid username!';
                          //   }
                          // },
                          // onSaved: (value) {
                          //   _authData['username'] = value;
                          // },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
