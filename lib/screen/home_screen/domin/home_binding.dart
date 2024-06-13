import 'package:get/get.dart';
import 'package:ultimate_solutions/screen/home_screen/domin/home_controller.dart';


class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
