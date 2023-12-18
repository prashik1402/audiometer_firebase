import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sih_23_audiometer/features/splash_screen/splash_screen.dart';
import 'package:sih_23_audiometer/features/user_path/presentation/pages/login_page.dart';
import 'package:sih_23_audiometer/features/user_path/presentation/pages/signup_page.dart';
import 'package:sih_23_audiometer/features/user_path/presentation/pages/home_page.dart';
import 'dart:io';

// import 'firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
// import 'package:sih_23_audiometer/features/app/splash_screen/splash_screen.dart';
// import 'package:sih_23_audiometer/features/user_auth/presentation/pages/home_page.dart';
// import 'package:sih_23_audiometer/features/user_auth/presentation/pages/login_page.dart';
// import 'package:sih_23_audiometer/features/user_auth/presentation/pages/sign_up_page.dart';
// import 'package:fluttertoast/fluttertoast.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyDoekT6atzuU9F8Wzpi3TIoCe-7609Z8kA",
            appId: "1:462358950487:android:978293314af9e5b2bfe912",
            messagingSenderId: "462358950487",
            projectId: "sih23audiometer",
          ),
        )
      : await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
