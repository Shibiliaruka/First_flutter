import 'package:chaton/loginscreen.dart';
import 'package:chaton/navigator.dart';
import 'package:chaton/route.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  /// Add entry for new route here
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.HOMESCREEN:
        return MaterialPageRoute(
          settings: RouteSettings(name: Routes.HOMESCREEN),
          builder: (_) => nav(),
        );
      // case Routes.LOGINSCREEN:
      //   return MaterialPageRoute(
      //     settings: RouteSettings(name: Routes.LOGINSCREEN),
      //     builder: (_) => loginscreen(),
      //   );
      case Routes.LOGOUT:
        return MaterialPageRoute(
          settings: RouteSettings(name: Routes.LOGOUT),
          builder: (_) => loginscreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
