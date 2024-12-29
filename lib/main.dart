import 'package:first/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 17, 17),
        body: Home(),
      ),
      theme: ThemeData(fontFamily: 'Poppins'),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
