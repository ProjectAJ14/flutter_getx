import 'package:flutter_getx/mind/utils/enums/screen_state.dart';
import 'package:get/get.dart';

class ScreenController extends GetxController {
  final _screenState = ScreenState.LOADED.obs;

  ScreenState get screenState => _screenState.value;

  bool get isLoading => screenState == ScreenState.LOADING;

  showLoading() {
    _screenState.value = ScreenState.LOADING;
  }

  hideLoading() {
    _screenState.value = ScreenState.LOADED;
  }
}
