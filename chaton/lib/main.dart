import 'package:chaton/loginscreen.dart';
import 'package:chaton/splashscreen.dart';
import 'package:flutter/material.dart';

import 'app_route.dart';

void main(List<String> args) {
  runApp(chaton());
}

class chaton extends StatelessWidget {
  const chaton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
