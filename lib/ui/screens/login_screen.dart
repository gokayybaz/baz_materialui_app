import 'package:baz_materialui_app/ui/screens/register_screen.dart';
import 'package:baz_materialui_app/ui/widgets/LoginScreen/login_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildLogoArea(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                buildLoginFormWidget(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Column(
                  children: [
                    buildNoAccountText(context),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    buildRegisterButton(
                        context,
                        () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              ),
                            }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}