import 'package:path_provider/path_provider.dart';

Future<String> getPath([String? filename]) async {
  final directory = await getExternalStorageDirectory();
  final dirPath = directory!.path;
  final fullPath = '$dirPath/$filename';
  return fullPath;
}
