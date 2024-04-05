import 'package:codeland/screens/image_upload_screen/image_upload_screen.dart';
import 'package:codeland/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'helpers/app_navigations/app_routes.dart';
import 'screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code land demo app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.splashScreen.routeName,
      routes: {
        AppRoute.loginScreen.routeName: (context) => const LoginScreen(),
        AppRoute.splashScreen.routeName: (context) => const SplashScreen(),
        AppRoute.imageUploadScreen.routeName: (context) =>
            const ImageUploadScreen(),
      },
    );
  }
}
