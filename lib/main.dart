import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterLogin/Screens/Auth/signIn.dart';
import 'package:flutterLogin/Screens/Auth/signUp.dart';
import 'package:flutterLogin/Screens/Menu/home.dart';
import 'package:flutterLogin/Screens/wrapper.dart';

// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      initialRoute: '/',
      routes: {
        '/signIn': (context) => SignIn(),
        '/signUp': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
