import 'package:codeland/helpers/constants/app_constants.dart';
import 'package:codeland/helpers/constants/app_styles.dart';
import 'package:codeland/screens/image_upload_screen/image_upload_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button.dart';
import '../widgets/dotted_container_painter.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  ImageUploadScreenVM imageUploadScreenVM = ImageUploadScreenVM();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.048),
          child: Observer(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.04,top: height * 0.08),
                  child: Text(
                    'Upload a Image',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                imageUploadScreenVM.imageBytes.isNotEmpty &&
                        imageUploadScreenVM.isImageDisplayed
                    ? Center(
                        child: Image.memory(
                          Uint8List.fromList(imageUploadScreenVM.imageBytes),
                          fit: BoxFit.contain,
                          width: width * 0.6,
                          height: height * 0.5,
                        ),
                      )
                    : SizedBox(
                        width: width * 0.6,
                        height: height * 0.5,
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            CustomPaint(
                              painter: DottedContainerPainter(),
                            ),
                            Center(
                              child: Image.asset(
                                AppConstants.noImagePath,
                                width: width * 0.3,
                                height: height * 0.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.084),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        onPressed: imageUploadScreenVM.handleUploadClick,
                        buttonSize: const Size(120, 35),
                        child: Text(
                          AppConstants.uploadButtonText,
                          style: AppStyle.uploadButtonTextStyle,
                        ),
                      ),
                      Button(
                        onPressed: imageUploadScreenVM.handleViewClick,
                        buttonSize: const Size(120, 35),
                        buttonColor: const Color(0xffD3D3D6),
                        child: Text(
                          AppConstants.viewButtonText,
                          style: AppStyle.viewButtonStyle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
