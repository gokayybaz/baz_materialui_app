import 'package:baz_materialui_app/ui/widgets/LoginScreen/login_widgets.dart';
import 'package:baz_materialui_app/ui/widgets/RegisterScreen/register_widgets_variables.dart';
import 'package:flutter/material.dart';

AppBar buildRegisterScreenAppBar() {
  return AppBar(
    title: Text(RegisterScreenWidgetsVariables().appBarTitleText),
  );
}

Form buildRegisterForm(BuildContext context) {
    return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextInputLabel(RegisterScreenWidgetsVariables().eMailInputLabelText),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().labeInputInterHeight,
                  ),
                  // prefix icon - hint text - border
                  buildTextInput(RegisterScreenWidgetsVariables().eMailInputIcon, RegisterScreenWidgetsVariables().eMailInputHintText, RegisterScreenWidgetsVariables().inputsBorder),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().inputsStackInterHeight,
                  ),
                  buildTextInputLabel(RegisterScreenWidgetsVariables().passwordInputLabelText),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().labeInputInterHeight,
                  ),
                  buildTextInput(RegisterScreenWidgetsVariables().passwordInputIcon, RegisterScreenWidgetsVariables().passwordInputHintText, RegisterScreenWidgetsVariables().inputsBorder),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().inputsStackInterHeight,
                  ),
                  buildTextInputLabel(RegisterScreenWidgetsVariables().passwordReInputLabelText),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().labeInputInterHeight,
                  ),
                  buildTextInput(RegisterScreenWidgetsVariables().passwordReInputIcon, RegisterScreenWidgetsVariables().passwordReInputHintText, RegisterScreenWidgetsVariables().inputsBorder),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().inputsStackInterHeight,
                  ),
                  buildTextInputLabel(RegisterScreenWidgetsVariables().cellPhoneNumberInputLabelText),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().labeInputInterHeight,
                  ),
                  buildTextInput(RegisterScreenWidgetsVariables().cellPhoneNumberInputIcon, RegisterScreenWidgetsVariables().cellPhoneNumberInputHintText, RegisterScreenWidgetsVariables().inputsBorder),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / RegisterScreenWidgetsVariables().formRegisterButtonInterHeight,
                  ),
                  buildRegisterButton(
                    context,
                    () => {
                      buildAcoountRegisterVerificationAlertDialog(context),
                    },
                  ),
                ],
              ),
            );
  }

Future<dynamic> buildAcoountRegisterVerificationAlertDialog(BuildContext context) {
  return showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text(RegisterScreenWidgetsVariables().accountVerificationVerifideButtonText),
                          ),
                        ],
                        title: Text(RegisterScreenWidgetsVariables().accountVerificationDialogTitle),
                        content: Container(
                          child: TextField(
                            decoration: InputDecoration(
                                border: RegisterScreenWidgetsVariables().inputsBorder,
                                hintText: RegisterScreenWidgetsVariables().accountVerificationCodeInputHintText),
                          ),
                        ),
                      ),
                    );
}

TextFormField buildTextInput(IconData gPrefixIcon,String gHintText,InputBorder gBorder) {
  return TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(gPrefixIcon),
                    hintText: gHintText,
                    border: gBorder,
                  ),
                );
}

Text buildTextInputLabel(String gTitle) {
  return Text(
                  gTitle,
                  style:
                      TextStyle(fontSize: RegisterScreenWidgetsVariables().inputLabelFontSize, fontWeight: RegisterScreenWidgetsVariables().inputLabelFontWeight),
                );
}
