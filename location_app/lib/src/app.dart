import 'package:flutter/material.dart';
import 'package:location_app/src/resources/home.dart';
import 'package:location_app/src/resources/login.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}