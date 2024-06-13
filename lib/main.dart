import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ultimate_solutions/routes/app_pages.dart';
import 'package:ultimate_solutions/screen/splash_screen/domin/splash_binding.dart';
import 'package:flutter_locales/flutter_locales.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'ar']);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        rebuildFactor: (old, data) => true,
        builder: (context, child) {
          return LocaleBuilder(
            builder: (locale) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: Locales.delegates,
              supportedLocales: Locales.supportedLocales,
              locale: locale,
              initialRoute: AppPages.initial,
              getPages: AppPages.routes,
              initialBinding: SplashBindings(),
            ),
          );
        });
  }
}

