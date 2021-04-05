import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

Future<String> getPath([String? filename]) async {
  final directory = await getExternalStorageDirectory();
  var dirPath = directory!.path;
  var fullPath = '$dirPath/$filename';
  return fullPath;
}

Future downloadFile(String url, String savePath, BuildContext ctx) async {
  var dio = new Dio();

  ProgressDialog pd = ProgressDialog(context: ctx);
  pd.show(
    max: 100,
    msg: 'Downloading file...',
    progressType: ProgressType.valuable,
    backgroundColor: materialDark,
    progressValueColor: accentClr,
    progressBgColor: Colors.white70,
    msgColor: Colors.white,
    valueColor: Colors.white,
  );

  await dio.download(
    "$url",
    "$savePath",
    onReceiveProgress: (rec, total) {
      int progress = (((rec / total) * 100).toInt());
      pd.update(value: progress);
    },
  );
}

Future<bool> requestPermissions() async {
  var permission = await Permission.storage.status;
  if (permission != PermissionStatus.granted) {
    await Permission.storage.request();
    permission = await Permission.storage.status;
  }
  return permission == PermissionStatus.granted;
}
