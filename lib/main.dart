import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/SplashScreen.dart';
import 'package:seniors_go_digital/auth/SignupScreen.dart';
import 'package:seniors_go_digital/firebase_options.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screens/DashboardScreen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Seniors Go Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
        home: SplashScreen(),
      //home: SignupScreen(),
    );
  }
}
