/*
import 'dart:async';
import 'dart:convert';

import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesHelper {
  static const bool DEBUG_MODE = true;

  static _PrefAdapter? _prefAdapter;
  static final log = getLogger();

  static Future<String?> put(String key, dynamic value) async {
    final _PrefAdapter prefs = _getInstance();

    String? original = await prefs.get(key);
    await prefs.put(key, jsonEncode(value));
    if (DEBUG_MODE) if (DEBUG_MODE)
      log.i(
          "${Strings
              .T_PREFERENCES_HELPER} PUT $key =>>>>>>>>>>>>>>>>>>>>= $value");

    return original;
  }

  static Future<String?> get(String key, {defaultResult}) async {
    final _PrefAdapter prefs = _getInstance();

    String? result = (await prefs.get(key)) ?? defaultResult;
    if (DEBUG_MODE)
      log.i(
          "${Strings
              .T_PREFERENCES_HELPER} GET $key =>>>>>>>>>>>>>>>>>>>>= $result");

    try {
      result = jsonDecode(result!);
      log.i("result from get in PreferencesHelper :$result");

      return result;
    } catch (e) {}
    return result;
    // return result[key];
  }
}

class _PrefAdapter {
  static const String FSS_PREFIX = "_fss_"; //Flutter Secure Storage PREFIX
  static const String SP_PREFIX = "_sp_"; //shared Preferences PREFIX

  Completer pluginFuture = Completer();

  bool isSecure = false;

  _PrefAdapter() {
    setupPlugin();
  }

  void setupPlugin() async {
    this.isSecure = false;
    this.pluginFuture.complete(await SharedPreferences.getInstance());
  }

  Future put(String key, dynamic value) async {
    final plugin = await pluginFuture.future;
    if (plugin is FlutterSecureStorage)
      plugin.write(key: "$FSS_PREFIX/$key", value: value);
    else if (plugin is SharedPreferences)
      plugin.setString("$SP_PREFIX/$key", value);
  }

  Future<dynamic> get(String key) async {
    final plugin = await pluginFuture.future;

    String? result;
    if (plugin is FlutterSecureStorage)
      result = await plugin.read(key: "$FSS_PREFIX/$key");
    else if (plugin is SharedPreferences)
      result = plugin.getString("$SP_PREFIX/$key");

    return result;
  }

  Future remove(String key) async {
    final plugin = await pluginFuture.future;
    if (plugin is FlutterSecureStorage)
      plugin.delete(key: "$FSS_PREFIX/$key");
    else if (plugin is SharedPreferences) plugin.remove("$SP_PREFIX/$key");
  }

  Future removeAll() async {
    final plugin = await pluginFuture.future;
    if (plugin is FlutterSecureStorage)
      plugin.deleteAll();
    else if (plugin is SharedPreferences) plugin.clear();
  }
}

 */