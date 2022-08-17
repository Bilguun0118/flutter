import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_f/ui/util/routes.dart';
import 'package:instagram_f/ui/home_screen.dart';
import 'package:instagram_f/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      color: Color(0xffF2F2F2),
      initialRoute: homeRoute,
      routes: <String, WidgetBuilder>{
        loginRoute:(context) => const LoginScreen(),
        homeRoute:(context) => const HomeScreen(),
      },
    );
    // return MaterialApp(
      // home: HomeScreen(),
      // home: LoginScreen(),
      // login: LoginScreen(),
      // theme: ThemeData(primarySwatch: Colors.grey),
    // );
  }
}
