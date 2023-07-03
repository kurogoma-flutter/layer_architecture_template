import 'generic_exception.dart';

class AppInternalError extends GenericException {
  AppInternalError({
    required AppInternalErrorCode error,
    dynamic info,
  }) : super(error, info: info);
}

///
/// # アプリ内エラーコード
///
/// ## 変数定義
///
/// [errorCode] : アプリ内エラーコード
///
/// [errorTitle] : エラータイトル
///
/// [errorMessage] : 画面表示用エラーメッセージ
///
enum AppInternalErrorCode implements ErrorCode {
  failedGetLocalFile('E0001', 'エラー', 'エラーが発生しました。しばらくしてもう一度お試しください。'),
  failedEncrypt('E0002', 'エラー', 'エラーが発生しました。しばらくしてもう一度お試しください。'),
  failedJsonParse('E0003', 'エラー', 'エラーが発生しました。しばらくしてもう一度お試しください。'),
  failedConnection('E0004', 'エラー', 'インターネットに接続できませんでした。ネットワークの接続状態を確認してください。'),
  forceUpdateApp(
      'E0005', 'エラー', '新しいバージョンがご利用可能です。ストアより最新バージョンへのアップデートをお願いいたします。'),
  offline('E0006', 'エラー', 'インターネットに接続できませんでした。ネットワークの接続状態を確認してください。'),
  osv('E0007', 'エラー', 'お使いのOSバージョンはサポートしておりません。端末OSのアップデートか、対象OSの端末をご用意ください。'),
  rootDevice('E0008', 'エラー',
      '本アプリの利用に必要なセキュリティが確認できませんでした。ご利用のデバイスはOSが不正変更されている等の可能性があります。'),
  ;

  const AppInternalErrorCode(
      this._errorCode, this._errorTitle, this._errorMessage);

  final String _errorCode;

  final String _errorTitle;

  final String _errorMessage;

  @override
  String get errorCode => _errorCode;

  @override
  String get errorTitle => _errorTitle;

  @override
  String get errorMessage => _errorMessage;
}
