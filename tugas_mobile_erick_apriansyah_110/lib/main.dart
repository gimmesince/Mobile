import 'package:flutter/material.dart';
import 'package:tugas_mobile_erick_apriansyah_110/home.dart';
import 'package:tugas_mobile_erick_apriansyah_110/user_model.dart';
import 'package:tugas_mobile_erick_apriansyah_110/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
