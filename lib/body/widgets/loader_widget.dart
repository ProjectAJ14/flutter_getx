import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

const Duration _animationDuration = Duration(milliseconds: 1000);

class LoaderBackgroundWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: _animationDuration,
    );

    var colorAnimation = ColorTween(
      begin: Colors.black12,
      end: Colors.black54,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));

    animationController.forward();

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Container(
          height: Get.height,
          width: Get.width,
          color: colorAnimation.value,
          child: BackdropFilter(
            child: const Center(
              child: CircularProgressIndicator(),
            ),
            filter: ImageFilter.blur(
              sigmaX: animationController.value * 3,
              sigmaY: animationController.value * 3,
            ),
          ),
        );
      },
    );
  }
}
