import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modeules/config/config_page.dart';
import 'package:getx_test/repositories/repository_home.dart';
import 'package:getx_test/theme/theme.dart';

class HomeController extends GetxController {
  var repoResult = <String>[].obs;
  var isDarkMode = Get.isDarkMode.obs;

  var isRedThemeLight = false.obs;
  var isRedThemeDark = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    print("onInit $runtimeType");
    repoResult.assignAll(["onInit"]);
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("onReady $runtimeType");
    // repoResult.assignAll(["onReady"]);
    super.onReady();
  }

  void getRepo() => repoResult.assignAll(HomeRepository.getList());

  void changeThemeMode() {
    isDarkMode.toggle();
    Get.changeThemeMode(
      Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
    );
  }

  void changeThemeLight() {
    Get.changeTheme(
        isRedThemeLight.value ? ThemeData.light() : MyTheme.redLight);
    isRedThemeLight.toggle();
  }

  void changeThemeDark() {
    Get.changeTheme(isRedThemeDark.value ? ThemeData.dark() : MyTheme.redDark);
    isRedThemeDark.toggle();
  }

  void goConfig() {
    // Get.to(const ConfigPage());
    Get.toNamed("/config");
  }

  void snack() {
    Get.showSnackbar(const GetSnackBar(
      title: "GetSnackBar",
      message: "Message",
      icon: Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    ));
  }
}
