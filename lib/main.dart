import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hobbiton_flutter_api_project/Screens/home.dart';

void main () {
  runApp(const HobbitonFlutterAPI());
}

class HobbitonFlutterAPI extends StatefulWidget {
  const HobbitonFlutterAPI({Key? key}) : super(key: key);

  @override
  State<HobbitonFlutterAPI> createState() => _HobbitonFlutterAPIState();
}

class _HobbitonFlutterAPIState extends State<HobbitonFlutterAPI> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
