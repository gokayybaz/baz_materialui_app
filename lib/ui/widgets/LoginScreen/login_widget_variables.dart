import 'package:flutter/material.dart';

class LoginScreenWidgetsVariables {
    // Logo Area Variables
   double logoAreaWidth(context) => MediaQuery.of(context).size.width;
   double logoAreaHeight = 250;
   Color? logoAreaBackgroundColor = Colors.blue[600];
   double logoAreaBorderRadiusVariable = 10;
   //--------------

   // Login Form Variables
   String eMailInputHintText = "E-posta adresinizi giriniz...";
   InputBorder eMailInputBorder = OutlineInputBorder();
   bool eMailIsPassword = false;

   String passwordInputHintText = "Parolanızı giriniz...";
   InputBorder passwordInputBorder = OutlineInputBorder();
   bool passwordIsPassword = true;

   String formLoginButtonTitle = "Giriş Yap";
   String formGoogleLoginFormTitle = "Google ile Giriş Yap";
  
  // Register Text & Button Area
  String registerText = "Hesabın yok mu?";
  String registerButtonText = "Kayıt Ol";

  // Login Screen Button Width & Height Variables
  double loginScreenButtonWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double loginScreenButtonHeight = 50;

  // Login Buttons & Register Button Icons
  IconData loginButtonIcon = Icons.login;
  IconData googleLoginButtonIcon = Icons.insert_link;
  IconData registerButtonIcon = Icons.input;

   LoginScreenWidgetsVariables(BuildContext context){
     // Logo Area
     this.logoAreaWidth(context);
     this.logoAreaHeight;
     this.logoAreaBackgroundColor;
     this.logoAreaBorderRadiusVariable;
     //--------------

     // Login Form Area
     this.eMailInputHintText;
     this.eMailInputBorder;
     this.eMailIsPassword;
     this.passwordInputHintText;
     this.passwordInputBorder;
     this.passwordIsPassword;
     this.formLoginButtonTitle;
     this.formGoogleLoginFormTitle;
     //--------------

     //Register Text & Button Area
     this.registerText;
     this.registerButtonText;
     //--------------

     // Login Screen Button Width & Height Variables
     this.loginScreenButtonWidth(context);
     this.loginScreenButtonHeight;
     //--------------
     
    // Login Buttons & Register Button Icons
     this.registerButtonIcon;
     this.loginButtonIcon;
     this.googleLoginButtonIcon;
   }

}