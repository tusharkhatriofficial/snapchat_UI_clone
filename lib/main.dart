import 'package:flutter/material.dart';
import 'package:snapchat_clone_ui/screens/home_screen.dart';
import 'package:snapchat_clone_ui/screens/initial_screen.dart';
import 'package:snapchat_clone_ui/screens/login_screen.dart';
import 'package:snapchat_clone_ui/screens/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF838486),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/signup_screen': (context) => SignupScreen(),
        '/home_screen': (context) => HomeScreen(),

      },
    );
  }
}
