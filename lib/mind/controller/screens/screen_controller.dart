import 'package:flutter_getx/mind/utils/enums/screen_state.dart';
import 'package:get/get.dart';

class ScreenController extends GetxController {
  final _screenState = ScreenState.loaded.obs;

  ScreenState get screenState => _screenState.value;

  bool get isLoading => screenState == ScreenState.loading;

  void showLoading() {
    _screenState.value = ScreenState.loading;
  }

  void hideLoading() {
    _screenState.value = ScreenState.loaded;
  }
}
