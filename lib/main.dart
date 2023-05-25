import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options:  FirebaseOptions(
            apiKey: "AIzaSyB7mrTkVAyM0flNYXLR__qafzt1amTA0SA",
            appId: "1:313646093058:web:94b76bd07793efec62281b",
            messagingSenderId: "313646093058",
            projectId: "instagram-89d81",
            storageBucket: "instagram-89d81.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      /*home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),*/
      home: const SignupScreen(),
    );
  }
}
