import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tolet_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      child: GetMaterialApp(
        title: 'Flutter Demo',
        // darkTheme: ThemeData.dark(),
        // home: HomePage(),
      ),
    );
  }
}


