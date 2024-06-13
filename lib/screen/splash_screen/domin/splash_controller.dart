import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_solutions/routes/app_pages.dart';


class SplashController extends GetxController {

  String logo = "assets/images/logo.png";
  String background ="assets/images/background.png";
  String driver = "assets/images/driver.png";

  SharedPreferences? preferences;
  Future<void> initializePreference() async{
    preferences = await SharedPreferences.getInstance();

    Future.delayed(const Duration(seconds: 3), () {
      if(preferences?.getBool('login') == false)
      {
        Get.toNamed(Routes.home);
      }else{
        Get.toNamed(Routes.login);
      }
    });

  }

  @override
  void onInit() {
    initializePreference();
    super.onInit();
  }

  }

