import 'package:flutter/material.dart';
import 'package:news_app/presentaion/screens/home_page.dart';

class NewaApp extends StatelessWidget {
  const NewaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
