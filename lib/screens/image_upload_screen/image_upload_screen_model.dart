import 'package:codeland/services/platform_services/image_picker_service/image_picker_service.dart';
import 'package:codeland/services/platform_services/permission_handler_service/permission_handler_service.dart';
import 'package:mobx/mobx.dart';

import '../../helpers/app_navigations/navigation_helper.dart';

part 'image_upload_screen_model.g.dart';

class ImageUploadScreenModel extends _ImageUploadScreenModel
    with _$ImageUploadScreenModel, NavigationMixin {}

abstract class _ImageUploadScreenModel with Store {


  PermissionHandlerService permissionHandlerService = PermissionHandlerService();
  ImagePickerService imagePickerService = ImagePickerService();

  @observable
  List<int> imageBytes = [];

  @observable
  bool isImageDisplayed = false;

  @action
  void setImageDisplayed(bool isImageDisplayed){
    this.isImageDisplayed = isImageDisplayed;
  }

  @action
  void setImageBytes(List<int> imageBytes) {
    this.imageBytes = imageBytes;
  }
}
