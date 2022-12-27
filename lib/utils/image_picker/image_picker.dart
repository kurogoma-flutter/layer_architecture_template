import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'crop_image.dart';

/// 画像をギャラリーから取得し、切り抜きを行う
///
/// return Map<String, dynamic>?
/// Mapデータは、['croppedFile']に切り抜き後のファイル、['fileName']にファイル名が入っている
Future<Map<String, dynamic>?> pickAndCropImage(
  BuildContext context,
) async {
  final pickedFile = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    maxHeight: 1600,
    maxWidth: 1600,
  );
  if (pickedFile == null) {
    return null;
  }
  // ファイル名の選択
  final fileName = pickedFile.name;

  final croppedFile = await cropImage(
    filePath: pickedFile.path,
    context: context,
  );

  if (croppedFile == null) {
    return null;
  }

  return {
    'croppedFile': croppedFile,
    'fileName': fileName,
  };
}

/// 画像をギャラリーから選択
Future<XFile?> pickImage() async {
  final pickedFile = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    maxHeight: 1600,
    maxWidth: 1600,
  );
  if (pickedFile == null) {
    return null;
  }

  return pickedFile;
}
