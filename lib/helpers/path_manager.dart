import 'package:path_provider/path_provider.dart';

Future<String> getPath([String? filename]) async {
  final directory = await getExternalStorageDirectory();
  var dirPath = directory!.path;
  var fullPath = '$dirPath/$filename';
  return fullPath;
}
