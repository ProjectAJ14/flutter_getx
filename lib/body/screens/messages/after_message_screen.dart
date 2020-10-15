import 'package:flutter/material.dart';

class AfterMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('After Message Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () async {},
                child: Text('Close Two screen'),
              ),
            ],
          ),
        ));
  }
}
