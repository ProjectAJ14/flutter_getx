import 'package:flutter/material.dart';
import 'package:flutter_getx/body/screens/game/game_screen.dart';
import 'package:flutter_getx/body/screens/menu/menu_screen.dart';
import 'package:flutter_getx/mind/controller/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:ns_utils/src.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("===============Is this rebuilding=====");
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    Get.to(
                      GameScreen(),
                      transition: Transition.rightToLeftWithFade,
                      opaque: false,
                    );
                  },
                  child: Text('Open Next Screen'),
                ),
                C50(),
                RaisedButton(
                  onPressed: () async {
                    controller.showLoading();
                    await Get.to(
                      MenuScreen(),
                      transition: Transition.rightToLeftWithFade,
                      opaque: false,
                    );
                    controller.hideLoading();
                  },
                  child: Text('Open Menu Screen'),
                ),
                RaisedButton(
                  onPressed: () async {
                    controller.showLoading();
                  },
                  child: Text('Show loader Screen'),
                ),
              ],
            ),
          ),
        ),
        Obx(() {
          if (controller.isLoading)
            return GestureDetector(
              onTap: () => controller.hideLoading(),
              child: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.black54,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          return C0();
        }),
      ],
    );
  }
}
