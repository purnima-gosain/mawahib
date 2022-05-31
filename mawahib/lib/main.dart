import 'package:flutter/material.dart';

import 'package:mawahib/pages/splash/splashScreen.dart';
import 'package:mawahib/router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _flutterRouter = FlutterRouter();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _flutterRouter.defaultRouteParser(),
        routerDelegate: _flutterRouter.delegate());
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(),
    //   home: const WelcomeScreen(),
    // );
  }
}
