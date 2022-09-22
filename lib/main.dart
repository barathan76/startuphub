import 'package:flutter/material.dart';
import 'Screens/welcomeScreen.dart';
import 'Screens/registerScreen.dart';
import 'Screens/loginScreen.dart';
import 'Screens/home.dart';
import 'Screens/patent.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/createjob.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Home.id: (context) => Home(),
      },
    );
  }
}
