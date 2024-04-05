import 'package:codeland/utils/service_result.dart';

import 'image_upload_screen_model.dart';

class ImageUploadScreenVM extends ImageUploadScreenModel {
  Future<void> handleUploadClick() async {
    try {
      await fetchMediaAccessPermission();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> fetchMediaAccessPermission() async {
    try {
      var res = await permissionHandlerService.requestMediaAccessPermission();
      if (res.statusCode == StatusCode.success) {
        await fetchImage();
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> fetchImage() async {
    try {
      setImageDisplayed(false);
      var res = await imagePickerService.fetchImageFromGallery();
      if (res.statusCode == StatusCode.success) {
        setImageBytes(res.data);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

  void handleViewClick() {
    try {
      setImageDisplayed(true);
    } catch (e) {
      print(e.toString());
    }
  }
}
