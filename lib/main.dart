import 'package:flutter/material.dart';
import 'package:student_clean_arch/views/login_view.dart';
import 'package:student_clean_arch/views/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginView(),
        '/registerRoute': (context) => const RegisterView(),
      },
    );
  }
}
