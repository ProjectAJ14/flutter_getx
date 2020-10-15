import 'package:flutter/material.dart';
import 'package:flutter_getx/body/widgets/loader_widget.dart';
import 'package:get/get.dart';
import 'package:ns_utils/src.dart';

class LoaderWrapper extends StatelessWidget {
  final Widget child;
  final controller;

  const LoaderWrapper({
    Key key,
    @required this.controller,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('=======Building LoaderWrapper=========');
    return Stack(
      children: [
        child,
        Obx(() {
          print('=======Building CircularProgressIndicator=========');
          if (controller.isLoading) return LoaderBackgroundWidget();

          return C0();
        }),
      ],
    );
  }
}
