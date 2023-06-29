///
/// # 異常系規定クラス
///

abstract class GenericException implements Exception {
  const GenericException(this.errorCode, {this.info});

  /// 内部管理用エラーコード
  final ErrorCode errorCode;

  /// その他のエラー情報(任意項目) 利用する際は具体的な型でOverrideして使用すること
  final dynamic info;

  /// エラー表示Widgetのタイトル
  String get notifyTitle => errorCode.errorTitle;

  /// エラー表示Widgetのボディテキスト
  String get notifyContentText =>
      '${errorCode.errorMessage}（${errorCode.errorCode}）';

  /// ログに表示するときに使用する想定
  @override
  String toString() =>
      'This is $runtimeType. ErrorCode: ${errorCode.errorCode}';
}

abstract class ErrorCode {
  const ErrorCode();

  /// 内部エラーコード
  String get errorCode;

  /// エラータイトル
  String get errorTitle;

  /// エラーメッセージ
  String get errorMessage;
}
