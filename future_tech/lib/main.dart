import 'package:flutter/material.dart';
import 'package:future_tech/features/home/presentation/pages/home_page.dart';

void main(List<String> args) {
  runApp(FutureTechApp());
}

class FutureTechApp extends StatelessWidget {
  const FutureTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutureTech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}