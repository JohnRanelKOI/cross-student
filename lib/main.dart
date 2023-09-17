import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cross Student Job Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 113, 112, 114)),
        //backgroundColor: Color.fromARGB(000, 233, 233, 233),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
      ),
      home: const LoginPage(title: 'Login App'),
    );
  }
}