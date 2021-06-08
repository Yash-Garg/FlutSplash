import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import '../theme/app_theme.dart';

Future downloadFile(String url, String savePath, BuildContext ctx) async {
  final dio = Dio();

  final pd = ProgressDialog(context: ctx);
  pd.show(
    max: 100,
    msg: 'Downloading file...',
    progressType: ProgressType.valuable,
    backgroundColor: const Color(0xFF121212),
    progressValueColor: accentClr,
    progressBgColor: Colors.white70,
    msgColor: Colors.white,
    valueColor: Colors.white,
  );

  await dio.download(
    url,
    savePath,
    onReceiveProgress: (rec, total) {
      final progress = ((rec / total) * 100).toInt();
      pd.update(value: progress);
    },
  );
}
