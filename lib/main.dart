import 'package:flutter/material.dart';
import 'package:picture_project/pages/inform.dart';
import 'package:picture_project/pages/login_division.dart';
import 'package:picture_project/pages/market_join.dart';
import 'package:picture_project/pages/personal_join.dart';
import 'package:picture_project/pages/profileUpdate.dart';
import 'package:picture_project/pages/review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: profileUpdatePage(),
    );
  }
}
