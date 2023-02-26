import 'package:baz_materialui_app/ui/widgets/LoginScreen/login_widget_variables.dart';
import 'package:flutter/material.dart';

// Logo Area
Container buildLogoArea(BuildContext context) {
  return Container(
    width: LoginScreenWidgetsVariables(context).logoAreaWidth(context),
    height: LoginScreenWidgetsVariables(context).logoAreaHeight,
    decoration: BoxDecoration(
      color: LoginScreenWidgetsVariables(context).logoAreaBackgroundColor,
      borderRadius: BorderRadius.circular(
          LoginScreenWidgetsVariables(context).logoAreaBorderRadiusVariable),
    ),
  );
}
//------------------------------------------------

// Login Form Area
Form buildLoginFormWidget(BuildContext context) {
  return Form(
    child: Column(
      children: [
        buildLoginInput(
          LoginScreenWidgetsVariables(context).eMailInputHintText,
          LoginScreenWidgetsVariables(context).eMailInputBorder,
          LoginScreenWidgetsVariables(context).eMailIsPassword,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        buildLoginInput(
          LoginScreenWidgetsVariables(context).passwordInputHintText,
          LoginScreenWidgetsVariables(context).passwordInputBorder,
          LoginScreenWidgetsVariables(context).passwordIsPassword,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        builLoginFormButton(
            context,
            LoginScreenWidgetsVariables(context).formLoginButtonTitle,
            () => {},LoginScreenWidgetsVariables(context).loginButtonIcon),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        builLoginFormButton(
          context,
          LoginScreenWidgetsVariables(context).formGoogleLoginFormTitle,
          () {}, LoginScreenWidgetsVariables(context).googleLoginButtonIcon
        ),
      ],
    ),
  );
}

SizedBox builLoginFormButton(
    BuildContext context, String buttonTitle, Function onPressed, IconData icon) {
  return SizedBox(
    width: LoginScreenWidgetsVariables(context).loginScreenButtonWidth(context),
    height: LoginScreenWidgetsVariables(context).loginScreenButtonHeight,
    child: ElevatedButton.icon(
      onPressed: () => {onPressed()},
      label: Text(buttonTitle),
      icon: Icon(icon),
    ),
  );
}

TextFormField buildLoginInput(
    String inputHintText, InputBorder inputBorder, bool isPassword) {
  return TextFormField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: inputHintText,
      border: inputBorder,
    ),
  );
}
//------------------------------------------------

// Register Text & Button Area

SizedBox buildRegisterButton(BuildContext context, Function onPressed) {
  return SizedBox(
    width: LoginScreenWidgetsVariables(context).loginScreenButtonWidth(context),
    height: LoginScreenWidgetsVariables(context).loginScreenButtonHeight,
    child: ElevatedButton.icon(
      onPressed: () => {
        onPressed(),
      },
      icon: Icon(LoginScreenWidgetsVariables(context).registerButtonIcon),
      label: Text(LoginScreenWidgetsVariables(context).registerButtonText),
    ),
  );
}

Text buildNoAccountText(BuildContext context) =>
    Text(LoginScreenWidgetsVariables(context).registerText);

  //------------------------------------------------