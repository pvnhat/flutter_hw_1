import 'package:flutter/material.dart';
import 'package:homework1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xfffa7b43),
      ),
      home: const LoginPage(title: 'Flutter Demo Login Page'),
    );
  }
}
