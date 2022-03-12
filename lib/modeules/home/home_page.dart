import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modeules/home/home_controller.dart';

class HomePage extends StatelessWidget {
// class HomePage extends GetView<HomeController> {
  final HomeController controller = Get.find();
  // final controller = Get.find<HomeController>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.repoResult.toString(),
                style: const TextStyle(fontSize: 40, color: Colors.amber),
              ),
              TextButton(
                onPressed: () => controller.getRepo(),
                child: const Text(
                  "Get Repo",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: controller.changeThemeMode,
                child: Text(
                  "isDarkMode: ${controller.isDarkMode}",
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: controller.changeThemeLight,
                child: Text(
                  "Red Light ${controller.isRedThemeLight}",
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: controller.changeThemeDark,
                child: Text(
                  "Red Dark: ${controller.isRedThemeDark}",
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: controller.snack,
                child: const Text(
                  "Snack",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: controller.goConfig,
                child: const Text(
                  "Go Config",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
