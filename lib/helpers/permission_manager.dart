import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermissions() async {
  var permission = await Permission.storage.status;
  if (permission != PermissionStatus.granted) {
    await Permission.storage.request();
    permission = await Permission.storage.status;
  }
  return permission == PermissionStatus.granted;
}
