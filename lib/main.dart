import 'package:flutter/material.dart';
import 'package:uber/widgets/base_window/base_window.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber App',
      theme: ThemeData(fontFamily: 'UberMove'),
      debugShowCheckedModeBanner: false,
      home: const BaseWindow(),
    );
  }
}
