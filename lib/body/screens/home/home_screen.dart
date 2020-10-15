import 'package:flutter/material.dart';
import 'package:flutter_getx/body/screens/game/game_screen.dart';
import 'package:flutter_getx/body/screens/menu/menu_screen.dart';
import 'package:flutter_getx/body/screens/messages/after_message_screen.dart';
import 'package:flutter_getx/body/screens/messages/main_message_screen.dart';
import 'package:flutter_getx/body/screens/messages/thread_message_screen.dart';
import 'package:flutter_getx/body/widgets/loader_wapper.dart';
import 'package:flutter_getx/mind/controller/home/home_controller.dart';
import 'package:flutter_getx/mind/utils/logs/logs.dart';
import 'package:get/get.dart';
import 'package:ns_utils/src.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("=============HomeScreen rebuilding=====");
    return LoaderWrapper(
      controller: controller,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.to(GameScreen());
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
              RaisedButton(
                onPressed: () async {
                  appLogs('Here $controller');
                },
                child: Text('Print Log Screen'),
              ),
              RaisedButton(
                onPressed: () async {
                  Get.to(
                    MainMessageScreen(),
                  );
                  Get.to(
                    ThreadMessageScreen(),
                  );
                  Get.to(
                    AfterMessageScreen(),
                  );
                },
                child: Text('Open Three screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
