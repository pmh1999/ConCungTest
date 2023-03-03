import 'package:concung/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        key:
            _key, //design height + appbar height - required if we have appbar and don't want to use scrollview because screen_util does not take into account
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
                textTheme: const TextTheme(headline1: TextStyle(fontSize: 45))),
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.cupertino,
            initialRoute: '/',
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            getPages: ROUTES,
          );
        });
  }
}
