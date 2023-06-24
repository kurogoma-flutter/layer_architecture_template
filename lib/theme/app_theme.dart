import 'package:flutter/material.dart';

const MaterialColor _primaryColor = Colors.blue;

final appThemeDefault = ThemeData(
  primarySwatch: _primaryColor, // プライマリーカラーの設定
  visualDensity: VisualDensity.adaptivePlatformDensity,
  buttonTheme: const ButtonThemeData(
    buttonColor: _primaryColor, // ボタンの背景色
    textTheme: ButtonTextTheme.primary, // ボタンテキストのテーマ
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, // ボタンテキストの色
      backgroundColor: _primaryColor, // ボタンの背景色
      minimumSize: const Size.fromHeight(32), // ボタンの高さ
      shape: const RoundedRectangleBorder(
        // ボタンの形状（角丸）
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: _primaryColor, // ボタンテキストの色
      disabledForegroundColor: _primaryColor.withOpacity(0.38),
      minimumSize: const Size.fromHeight(32), // ボタンの高さ
      shape: const RoundedRectangleBorder(
        // ボタンの形状（角丸）
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: _primaryColor, // ボタンテキストの色
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
  ),
  textTheme: const TextTheme(
    // body系のスタイル
    bodyLarge: TextStyle(
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
    ),
    // label系のスタイル
    labelLarge: TextStyle(
      fontSize: 16,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
    ),
    // その他のスタイル
    displayLarge: TextStyle(
      fontSize: 96,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
);
