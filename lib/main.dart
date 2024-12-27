import 'package:first/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 17,17,17),
        body: Home(),
      ),
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true
      ),
    );
  }
}
