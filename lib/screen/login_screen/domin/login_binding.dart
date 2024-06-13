import 'package:get/get.dart';
import 'package:ultimate_solutions/screen/login_screen/domin/login_controller.dart';



class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
