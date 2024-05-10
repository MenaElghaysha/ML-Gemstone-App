import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemstone/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Gemstone",
            theme: ThemeData( textTheme: const TextTheme(
              bodyText2: TextStyle(
                color: Colors.white,
              ),
            ),),
            home: child

        );
      },
      child: SplashScreen(),
    );
  }
}
