import 'package:codeland/helpers/constants/app_constants.dart';
import 'package:codeland/screens/splash_screen/splash_screen_vm.dart';
import 'package:flutter/material.dart';

import '../../helpers/app_navigations/navigation_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenVM _splashScreenVM = SplashScreenVM();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashScreenVM.navigateToLoginScreen();
    _splashScreenVM.navigationStream.listen((event) {
      if(event.navigationType == NavigationType.push){
        Navigator.pushNamed(context, event.appRoute!);
      }
    });


  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xffF5862A),
      body: Center(
        child: 
          Image.asset(
            AppConstants.splashScreenImagePath,
            width: width * 0.6,
          ),
          
      ),
    );
  }
}
