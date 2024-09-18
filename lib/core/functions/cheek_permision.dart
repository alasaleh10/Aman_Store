import 'package:permission_handler/permission_handler.dart';

Future<void> checkLocationPermission() async {
    PermissionStatus permissionStatus = await Permission.location.status;

    if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
      // إذا كانت الصلاحيات مرفوضة أو مرفوضة بشكل دائم، نطلب من المستخدم فتح الإعدادات
      bool opened = await openAppSettings();
      if (!opened) {
        print('تعذر فتح الإعدادات');
      }
    } else if (permissionStatus.isGranted) {
      // الصلاحيات ممنوحة
      print('تم منح صلاحيات الموقع.');
    } else if (permissionStatus.isRestricted || permissionStatus.isLimited) {
      // حالات أخرى محتملة
      print('الصلاحيات مقيدة.');
    }
  }