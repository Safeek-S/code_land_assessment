import 'package:codeland/helpers/constants/app_styles.dart';
import 'package:codeland/screens/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../helpers/app_navigations/navigation_helper.dart';
import '../../helpers/constants/app_constants.dart';
import 'login_screen_vm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginScreenVM loginScreenVM = LoginScreenVM();

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    loginScreenVM.navigationStream.listen((event) {
      switch (event.navigationType) {
        case NavigationType.push:
          Navigator.pushNamed(context, event.appRoute!);
          break;

        default:
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    userController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.089),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height* 0.01,),
              Center(
                        child: Image.asset(
                      AppConstants.codeLandLoginScreenImagePath,
                      width: width * 0.6,
                      height: height * 0.4,
                    )),
              Form(
                key: loginScreenVM.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding:
                          EdgeInsets.only(top: height * 0.025, bottom: 0.025),
                      child: TextFormField(
                        controller: userController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 12 ,horizontal: 12),
                          hintText: AppConstants.usernameHintText,
                          border: OutlineInputBorder(
                            borderRadius: AppStyle.textfieldBorderRadius,
                          ),
                        ),
                        validator: (value) =>
                            loginScreenVM.validateField(value, 'Name'),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true, // Hide password characters
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12 ,horizontal: 12),
                        hintText: AppConstants.passwordHintText,
                        border: OutlineInputBorder(
                          borderRadius: AppStyle.textfieldBorderRadius,
                        ),
                      ),
                      validator: (value) =>
                          loginScreenVM.validateField(value, 'Password'),
                    ),
                    SizedBox(
                      height: height * 0.028,
                    ),
                  ],
                ),
              ),
                 Button(
                      onPressed: loginScreenVM.handleLogin,
                      buttonSize: const Size(367, 50),
                      child: Text(
                        AppConstants.loginButtonText,
                        style: AppStyle.loginButtonTextStyle,
                      ),
                    ),
            
                    SizedBox(
                      height: height * 0.0646,
                    ),
                    Text(
                      AppConstants.assistanceMessageText,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: height * 0.01,bottom: height * 0.01),
                      child: RichText(
                        text: TextSpan(
                            text: AppConstants.languageSupportTextOne,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text: AppConstants.contactSupportOne,
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xffF68326),
                                ),
                              )
                            ]),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: AppConstants.languageSupportTextTwo,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: AppConstants.contactSupportTwo,
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xffF68326),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        textAlign: TextAlign.center,
                        '${AppConstants.version}\u00a9 ${AppConstants.copyRightYear},${AppConstants.companyName}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height:  height * 0.05,)
            ],
          ),
        ),
      ),
    );
  }
}
