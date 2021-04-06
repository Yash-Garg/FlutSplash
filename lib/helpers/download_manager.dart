import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

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
