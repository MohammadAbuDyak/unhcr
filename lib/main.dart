import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:unhcr/routes.dart';

import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) =>GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            titleLarge:  TextStyle(color: AppColor.focusColor,fontWeight: FontWeight.bold,fontSize: 18.sp),
            bodyLarge: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: Colors.black),
            bodySmall: TextStyle(fontSize: 9.sp,color: Colors.black),
            bodyMedium: TextStyle(fontSize: 13.sp),
            labelMedium:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: AppColor.focusColor)
            // bodyLarge:
          ),
          useMaterial3: false,
        ),
        getPages: routes,
      ),

    );
  }
}