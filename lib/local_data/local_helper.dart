import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/constants/strings.dart';
import 'package:spacex_tracker/main.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';



abstract class LocalHelper {
  static final log = getLogger();
  static const channel = MethodChannel('com.orbvpn/ServiceVpnChannel');



  static double getFontSize(double? fontSize) {
    fontSize = ((fontSize! * 30.0) / 35.0).sp;
    return fontSize;
  }

  /*
  static Future<void> appSetup() async {

    try {
      WidgetsFlutterBinding.ensureInitialized();
      await initHiveForFlutter();
      String? accessTokenFormLocal = await LocalHelper.getAccessToken();

      if (accessTokenFormLocal != null || accessTokenFormLocal != "null") {
        cache.store.put(Strings.C_AUTH, {Strings.C_ACCESS_TOKEN: accessTokenFormLocal});
        log.i("cache.store.get(Strings.AUTH): ${cache.store.get(Strings.C_AUTH)}");
      }

    } catch (e) {
      log.e(e);
    }
  }

  static Future<String?> getAccessToken() async {
    try {
      String? accessToken = await PreferencesHelper.get(Strings.C_ACCESS_TOKEN);
      return accessToken;
    } catch (error) {
      log.i("error from getAccessToken :$error");
      return "null";
    }
  }
*/

///email validation
 /*
  static String emailValidator(
      {required BuildContext context, required String value}) {
    String pattern ="email";
        //Strings.P_EMAIL;
    RegExp regExp = RegExp(pattern);
    if (value.trim().length == 0) {
      //return S.of(context).required;
    } else if (!regExp.hasMatch(value.trim())) {
     // return S.of(context).invalidEmailAddress;
    } else {
      return "";
    }
  }*/
}