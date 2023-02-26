import 'package:flutter/material.dart';

class RegisterScreenWidgetsVariables {
  // AppBar Variables
  String appBarTitleText = "Kayıt Ol";
  
  // Label - Input inter height
  double labeInputInterHeight = 60;

  // Inputs Stack Inter Height
  double inputsStackInterHeight = 50;

  // Form - RegisterButton Inter Height
  double formRegisterButtonInterHeight = 30;

  // Inputs Border
  InputBorder inputsBorder = OutlineInputBorder();

  // Input Labels
  double inputLabelFontSize = 17;
  FontWeight inputLabelFontWeight = FontWeight.w600;
  String eMailInputLabelText = "E-posta";
  String passwordInputLabelText = "Şifre";
  String passwordReInputLabelText = "Şifre Tekrar";
  String cellPhoneNumberInputLabelText = "Cep Telefon No";
  
  // Input Icons
  IconData eMailInputIcon = Icons.mail;
  IconData passwordInputIcon = Icons.key;
  IconData passwordReInputIcon = Icons.key;
  IconData cellPhoneNumberInputIcon = Icons.phone;

  // Input Hint Text
  String eMailInputHintText = "E-posta adresinizi giriniz...";
  String passwordInputHintText = "Şifrenizi giriniz...";
  String passwordReInputHintText = "Şifrenizi tekrar giriniz...";
  String cellPhoneNumberInputHintText = "Cep telefon numaranızı giriniz...";
  
  // Account Verification Dialog
  String accountVerificationDialogTitle = "Hesabı Doğrula";
  String accountVerificationCodeInputHintText = "Mailinize gelen kodu giriniz...";
  String accountVerificationVerifideButtonText = "Doğrula";

  RegisterScreenWidgetsVariables(){
    // AppBar
    this.appBarTitleText;
  //----------------------
  // Inputs
  this.inputsBorder;

  this.eMailInputLabelText;
  this.eMailInputIcon;
  this.eMailInputHintText;

  this.passwordInputLabelText;
  this.passwordInputIcon;
  this.passwordInputHintText;

  this.passwordReInputLabelText;
  this.passwordReInputIcon;
  this.passwordReInputHintText;

  this.cellPhoneNumberInputLabelText;
  this.cellPhoneNumberInputIcon;
  this.cellPhoneNumberInputHintText;
    
  }
}