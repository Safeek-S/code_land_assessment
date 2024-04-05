import 'dart:io';

import 'package:codeland/utils/service_result.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  Future<ServiceResult<List<int>>> fetchImageFromGallery() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        File imageFile = File(pickedFile.path);
        List<int> imageBytes = await imageFile.readAsBytes();
        return ServiceResult(
            StatusCode.success, 'Image fetched from the gallery', imageBytes);
      } else {
        return ServiceResult(StatusCode.failure, 'Please upload a image', []);
      }
    } catch (e) {
      print('Error fetching image from gallery: $e');
      return ServiceResult(StatusCode.error, e.toString(), []);
    }
  }
}
