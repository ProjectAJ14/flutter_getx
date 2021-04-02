import 'package:flutter/material.dart';

class AfterMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('After Message Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {},
                child: const Text('Close Two screen'),
              ),
            ],
          ),
        ));
  }
}
