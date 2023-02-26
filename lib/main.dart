import 'package:baz_materialui_app/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BazMaterialUIApp(),);
}

class BazMaterialUIApp extends StatelessWidget {
  const BazMaterialUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Baz MaterialUI App",
      home: LoginScreen(),
    );
  }
}