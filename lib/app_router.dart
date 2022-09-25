import 'package:flutter/material.dart';
import 'package:nfham2/constants/strings.dart';
import 'package:nfham2/presentation/screens/home_screen/home_screen.dart';
import 'package:nfham2/presentation/screens/splash_screen/splash_screen.dart';

class AppRouter {


  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case homeScreen:
        final phoneNumber = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
    }
  }
}
