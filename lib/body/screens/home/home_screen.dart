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
    print('=============HomeScreen rebuilding=====');
    return LoaderWrapper(
      controller: controller,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(GameScreen());
                },
                child: const Text('Open Next Screen'),
              ),
              const C50(),
              ElevatedButton(
                onPressed: () async {
                  controller.showLoading();
                  await Get.to(
                    MenuScreen(),
                    transition: Transition.rightToLeftWithFade,
                    opaque: false,
                  );
                  controller.hideLoading();
                },
                child: const Text('Open Menu Screen'),
              ),
              ElevatedButton(
                onPressed: () async {
                  controller.showLoading();
                  Future.delayed(
                    const Duration(seconds: 3),
                    controller.hideLoading,
                  );
                },
                child: const Text('Show loader Screen'),
              ),
              ElevatedButton(
                onPressed: () async {
                  appLogs('Here $controller');
                },
                child: const Text('Print Log Screen'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Get.to(
                    MainMessageScreen(),
                  );
                  await Get.to(
                    ThreadMessageScreen(),
                  );
                  await Get.to(
                    AfterMessageScreen(),
                  );
                },
                child: const Text('Open Three screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
