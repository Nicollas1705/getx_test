import 'package:get/get.dart';
import 'package:getx_test/modeules/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
  }

}