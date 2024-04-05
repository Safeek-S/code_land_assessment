
import 'package:permission_handler/permission_handler.dart';

import '../../../utils/service_result.dart';

class PermissionHandlerService {
  Future<ServiceResult<bool>> requestMediaAccessPermission() async {
    try {
          final mediaAccessStatus = await Permission.accessMediaLocation.request();
    if (mediaAccessStatus == PermissionStatus.granted) {
      // Permission granted
      return ServiceResult(StatusCode.success, 'Permission Granted', true);
    } else if (mediaAccessStatus == PermissionStatus.permanentlyDenied) {
      // Permission permanently denied, you can open settings page to open app settings
      await openAppSettings();
      return ServiceResult(StatusCode.success, 'User denied permission', true);
    } else {
      // Permission denied or other status
        return ServiceResult(StatusCode.failure, 'Unknown', false);
    }
  
    } catch (e) {
      return ServiceResult(StatusCode.error, e.toString(), false);
    }

  }
}
