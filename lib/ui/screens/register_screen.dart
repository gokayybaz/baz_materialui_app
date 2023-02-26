import 'package:baz_materialui_app/ui/widgets/RegisterScreen/register_widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildRegisterScreenAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildRegisterForm(context),
            ],
          ),
        ),
      ),
    );
  }
}
