import 'package:flutter/material.dart';
import 'package:logino/screens/home_logup.dart';

void main() {
  runApp(const Logino());
}

class Logino extends StatelessWidget {
  const Logino({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logino',
      home: HomeLogup(),
    );
  }
}