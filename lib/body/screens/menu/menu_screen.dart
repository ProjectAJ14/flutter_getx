import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ns_utils/src.dart';

class MenuScreen extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: FontSizes.getSp(20),
    inherit: false,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: AnimatedContainer(
        color: Colors.transparent,
        duration: Duration(seconds: 1),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: Sizes.s40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.s15),
                bottomLeft: Radius.circular(Sizes.s15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Option 1',
                    style: _textStyle,
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Option 2',
                    style: _textStyle,
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Option 3',
                    style: _textStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
