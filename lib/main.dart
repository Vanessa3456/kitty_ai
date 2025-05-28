// import 'package:ai_assistance/screen/home.dart';
import 'package:ai_assistance/helper/global.dart';
import 'package:ai_assistance/helper/pref.dart';
import 'package:ai_assistance/screen/onboarding.dart';
// import 'package:ai_assistance/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // await SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  // for initalizing to use app dir
  await Pref.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 1,
                iconTheme: IconThemeData(color: Colors.brown))),
        home: const Onboarding());
  }
}
