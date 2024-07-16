import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tolet_app/pages/details_page.dart';
import 'package:tolet_app/pages/home_page.dart';
import 'package:tolet_app/widgets/image_slider.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'ToLet',
        // darkTheme: ThemeData.dark(),
        home: HomePage(),
        // home: DetailsPage(),
      ),
    );
  }
}


