import 'package:flutter/material.dart';
import 'package:flutter_getx/mind/controller/game/game_controller.dart';
import 'package:get/get.dart';
import 'package:ns_utils/src.dart';

class GameScreen extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: FontSizes.getSp(100),
  );

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game target Screen'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return Text(
                  '${controller.first}',
                  style: _textStyle,
                );
              }),
              const C50(),
              Obx(() {
                return Text(
                  '${controller.second}',
                  style: _textStyle,
                );
              }),
            ],
          ),
          const C50(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.incrementFirst();
                },
                child: const Text('+2'),
              ),
              const C50(),
              ElevatedButton(
                onPressed: () {
                  controller.decrementSecond();
                },
                child: const Text('-1'),
              ),
            ],
          ),
          const C50(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return Text(
                  '${controller.sum}',
                  style: _textStyle,
                );
              }),
              Obx(() {
                return Text(
                  '${controller.result ? '❤' : '⛔️'}',
                  style: _textStyle.copyWith(
                    fontSize: Sizes.s50,
                  ),
                );
              }),
              Text(
                '${controller.target}',
                style: _textStyle.copyWith(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
