import 'package:flutter/material.dart';
import 'package:nfham2/app_router.dart';
import 'package:nfham2/presentation/screens/home_screen/home_screen.dart';
import 'package:nfham2/presentation/screens/materials_details_screen/material_details_screen.dart';
import 'package:nfham2/presentation/screens/splash_screen/splash_screen.dart';

import 'presentation/screens/materials_screen/materials_screen.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      home: SplashScreen(),
    );
  }
}



