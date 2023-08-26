/// OS, アプリのバージョンを比較するため、7桁のint型に変換する
///
/// メジャーバージョン：10進数2桁
///
/// マイナーバージョン：10進数2桁
///
/// パッチバージョン：10進数2桁
int formatVersionNumber(String version) {
  // 集計用変数
  String tempValue = '';
  // ピリオドで分割する
  final List<String> versionNumbers = version.split('.');
  // 配列の個数で識別
  // ex.) version 15 => '150000' => 150000
  if (versionNumbers.length == 1) {
    tempValue = versionNumbers.first.padRight(6, '0');
  }

  // ex.) version 8.5 => '080500' => 80500
  if (versionNumbers.length == 2) {
    versionNumbers.asMap().forEach((int index, String value) {
      tempValue += value.padLeft(2, '0');
    });
    tempValue = tempValue.padRight(6, '0');
  }

  // ex.) version 1.0.1 => '010001' => 10001
  if (versionNumbers.length == 3) {
    versionNumbers.asMap().forEach((int index, String value) {
      tempValue += value.padLeft(2, '0');
    });
  }

  return int.parse(tempValue);
}
