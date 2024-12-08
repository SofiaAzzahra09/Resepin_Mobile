import 'package:resep_mobile/screens/detail_screen.dart';
import 'package:resep_mobile/screens/home_page.dart';
import 'package:resep_mobile/screens/listResep_screen.dart';
import 'package:resep_mobile/screens/registration_screen.dart';
import 'package:resep_mobile/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:resep_mobile/screens/splash_screen.dart';

void main(){
  runApp(const ResepinApp());
}

class ResepinApp extends StatelessWidget {
  const ResepinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: ListResepPage(),
    );
  }
}