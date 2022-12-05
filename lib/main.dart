import 'package:face_app/routers/home/home_view.dart';
import 'package:face_app/routers/login/login_view.dart';
import 'package:face_app/routers/register/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      Login_View.route:(context) => const Login_View(),
      Register_View.route:(context) => const Register_View(),
      Home_View.route:(context) => const Home_View(),
    },
    initialRoute: Login_View.route,
    );
  }
}
