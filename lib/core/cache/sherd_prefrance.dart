import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static late SharedPreferences sharedPreferences;
  static late FlutterSecureStorage flutterSecureStorage;

  /// تهيئة الـ SharedPreferences و الـ SecureStorage
  static init() async {
    flutterSecureStorage = const FlutterSecureStorage();
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// حفظ البيانات
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    debugPrint(
        "SharedPrefHelper : SaveData with key : $key and value : $value");

    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is double) return await sharedPreferences.setDouble(key, value);

    throw Exception("Unsupported value type");
  }

  /// استرجاع البيانات
  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  /// حذف بيانات مفتاح معين
  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences.remove(key);
  }

  /// مسح كل البيانات
  static clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    return await sharedPreferences.clear();
  }

  /// حفظ بيانات حساسة في SecureStorage
  static saveSecuredString({
    required String key,
    required String value,
  }) async {
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    return await flutterSecureStorage.write(key: key, value: value);
  }

  /// استرجاع بيانات حساسة من SecureStorage
  static getSecuredString({required String key}) async {
    debugPrint('FlutterSecureStorage : getSecuredString with key : $key');
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  /// مسح جميع البيانات من SecureStorage
  static clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    await flutterSecureStorage.deleteAll();
  }

  /// تسجيل دخول المستخدم (حفظ الحالة)
  static Future<void> setUserLoggedIn({
    required String token,
    required String name,
    required String email,
    String? phone,
    String? image,
  }) async {
    await saveData(key: SharedPrefKeys.isLoggedInUser, value: true);
    await saveSecuredString(
        key: SharedPrefKeys.token, value: token); // 👈 ضيف السطر ده
    await saveData(key: SharedPrefKeys.name, value: name);
    await saveData(key: SharedPrefKeys.email, value: email);
    if (phone != null) await saveData(key: SharedPrefKeys.phone, value: phone);
    if (image != null) await saveData(key: SharedPrefKeys.image, value: image);
  }

  /// تسجيل خروج المستخدم (مسح الحالة)
  static Future<void> logout() async {
    await clearAllData();
    await clearAllSecuredData();
  }

  /// التحقق من حالة تسجيل الدخول
  static bool isUserLoggedIn() {
    return getData(key: SharedPrefKeys.isLoggedInUser) ?? false;
  }
}
