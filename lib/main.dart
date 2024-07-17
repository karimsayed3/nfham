import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/app_router.dart';
import 'package:nfham2/presentation/screens/home_screen/home_screen.dart';
import 'package:nfham2/presentation/screens/materials_details_screen/material_details_screen.dart';
import 'package:nfham2/presentation/screens/splash_screen/splash_screen.dart';
import 'package:nfham2/presentation/screens/start_screen/presentation/screen/start_screen.dart';
import 'firebase_options.dart';
import 'presentation/screens/materials_screen/materials_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        home: const StartScreen(),
      ),
    );
  }
}



