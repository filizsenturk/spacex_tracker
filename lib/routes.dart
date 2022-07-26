import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/screens/home_screen.dart';
import 'package:spacex_tracker/utilities/logger/simple_log_printer.dart';


final log = getLogger();

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    log.i("ScreenName :${settings.name}  | ScreenArguments: ${settings.arguments} | message : generateRoute Started");

    Widget child;
    switch (settings.name) {
      /*
      case SplashScreen.routeName:
        {
          child = SplashScreen();
          break;
        }

       */
      case HomeScreen.routeName:
        {
          child = HomeScreen();
          break;
        }


      default:
        child = Scaffold(
          body: Center(
            child: Text('No Route founded for : ${settings.name}'),
          ),
        );
        break;
    }

    return MaterialPageRoute(settings: settings, builder: (_) => applyFixedScaleFactor(child));
  }

  static Widget applyFixedScaleFactor(Widget child) {
    return Builder(builder: (BuildContext context) {
      final MediaQueryData data = MediaQuery.of(context);
      return MediaQuery(
        data: data.copyWith(textScaleFactor: 1),
        child: child,
      );
    });
  }

  /*
  static Widget _buildChangePasswordScreenRoute(ChangePasswordScreenArguments arguments) {
    String userEmail = arguments.userEmail;
    return ChangePasswordScreen(
      userEmail: userEmail,
    );
  }

   */


}
