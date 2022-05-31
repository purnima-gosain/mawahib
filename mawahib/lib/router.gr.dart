// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'pages/splash/onboarding/onboarding.dart' as _i2;
import 'pages/splash/splashScreen.dart' as _i1;

class FlutterRouter extends _i3.RootStackRouter {
  FlutterRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    WelcomeScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WelcomeScreen());
    },
    OnBoardingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(WelcomeScreen.name, path: '/'),
        _i3.RouteConfig(OnBoardingRoute.name, path: 'onBoarding')
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomeScreen extends _i3.PageRouteInfo<void> {
  const WelcomeScreen() : super(WelcomeScreen.name, path: '/');

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingRoute extends _i3.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: 'onBoarding');

  static const String name = 'OnBoardingRoute';
}
