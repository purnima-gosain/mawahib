import 'package:auto_route/auto_route.dart';
import 'package:mawahib/pages/splash/onboarding/onboarding.dart';

import 'pages/splash/splashScreen.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: '/',
    page: WelcomeScreen,
    initial: true,
  ),
  AutoRoute(path: 'onBoarding', page: OnBoardingPage),
])
class $FlutterRouter {}
