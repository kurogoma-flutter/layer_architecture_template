// TODO: 各OSへの設定はアプリ作成時に行う

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

/// 画像切り抜き
///
/// [filePath] 切り抜き対象の画像のパス
///
/// [context] 切り抜きダイアログのコンテキスト
///
Future<CroppedFile?> cropImage({
  required String filePath,
  required BuildContext context,
}) async {
  final croppedFile = await ImageCropper().cropImage(
    sourcePath: filePath,
    maxHeight: 1600,
    maxWidth: 1600,
    aspectRatioPresets: [
      CropAspectRatioPreset.square,
      CropAspectRatioPreset.original,
      CropAspectRatioPreset.ratio3x2,
    ],
    uiSettings: [
      WebUiSettings(
        context: context,
        enableZoom: true,
        mouseWheelZoom: false,
        showZoomer: true,
        customDialogBuilder: (cropper, crop, rotate) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: CropImageDialog(cropper: cropper, crop: crop),
          );
        },
      ),
    ],
    compressFormat: ImageCompressFormat.png,
  );
  return croppedFile;
}

/// 切り抜きで表示するダイアログ
///
/// [cropper] 画像の切り抜き部分
///
/// [crop] 切り抜きを実行する関数
class CropImageDialog extends StatefulWidget {
  const CropImageDialog({
    required this.cropper,
    required this.crop,
    super.key,
  });

  final Widget cropper;
  final Future<String?> Function() crop;

  @override
  State<CropImageDialog> createState() => _CropImageDialogState();
}

class _CropImageDialogState extends State<CropImageDialog> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.65,
        width: MediaQuery.of(context).size.width * 0.36,
        child: Column(
          children: [
            Expanded(
              child: widget.cropper,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: const Color.fromRGBO(88, 88, 88, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'キャンセル',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  // タップで切り抜き
                  onPressed: () async {
                    final result = await widget.crop();
                    if (!mounted) {
                      return;
                    }
                    Navigator.of(context).pop(result);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: const Color.fromRGBO(100, 131, 226, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '切り抜く',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
