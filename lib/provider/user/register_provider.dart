import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

import '../../screen/login_screen.dart';

class RegisterProvider with ChangeNotifier {
  ////////////email
  TextEditingController emailController = TextEditingController();
  /////////password
  TextEditingController passwordController = TextEditingController();
  /////nama/////
  TextEditingController userNameController = TextEditingController();

//////////email/////////////

  String _email = "";
  String get email => _email;

  bool _isEmailValid = true;
  bool get isEmailValid => _isEmailValid;

  String _errorEmailMessage = "";
  String get errorEmailMessage => _errorEmailMessage;

  get registerProvider => null;

  // bool _isButtonEmailValid = false;
  // bool get isButtonEmailValid => _isButtonEmailValid;
  void validateEmail(String value) {
    _email = value;
    if (_email.isEmpty) {
      _errorEmailMessage = "Email Tidak Boleh Kosong";
      _isEmailValid = false;
    } else if (!EmailValidator.validate(_email)) {
      _errorEmailMessage = "Email Tidak Sesuai";
      _isEmailValid = false;
      // _isButtonEmailValid = false;
    } else {
      _isEmailValid = true;
      // _isButtonEmailValid = true;
      _isuserNameValid = true;
    }
    // print(_isButtonEmailValid);

    notifyListeners();
  }

  // Password Property
  String _password = "";
  String get password => _password;

  bool _isPasswordValid = true;
  bool get isPasswordValid => _isPasswordValid;

  String _errorPasswordMessage = "";
  String get errorPasswordMessage => _errorPasswordMessage;

  bool _isHidePassword = true;
  bool get isHidePassword => _isHidePassword;

  // bool _isButtonPasswordValid = false;
  // bool get isButtonPasswordValid => _isButtonPasswordValid;
  void validatePassword(String value) {
    _password = value;
    if (_password.isEmpty) {
      _errorPasswordMessage = "Password Tidak Boleh Kosong";
      _isPasswordValid = false;
      // _isButtonPasswordValid = false;
    } else if (_password.length < 7) {
      _errorPasswordMessage = "Password harus lebih dari 7 karakter";
      _isPasswordValid = false;
      // _isButtonPasswordValid = false;
    } else {
      // _isButtonPasswordValid = true;
      _isPasswordValid = true;
    }
    // print(_isButtonPasswordValid);
    notifyListeners();
  }
  //////////////nama//////////////
  /// String _userName = "";

  String _userName = "";
  String get userName => _userName;

  bool _isuserNameValid = true;
  bool get isuserNameValid => _isuserNameValid;

  String _erroruserNameMessage = "";
  String get erroruserNameMessage => _erroruserNameMessage;

  // bool _isButtonuserNameValid = false;
  // bool get isButtonuserNameValid => _isButtonuserNameValid;

  void validateuserName(String value) {
    _userName = value;
    if (_userName.isEmpty) {
      _isuserNameValid = false;
      // _isButtonuserNameValid = false;
      _erroruserNameMessage = "userName Tidak Boleh Kosong!";
    } else if (_userName.length < 5) {
      _isuserNameValid = false;

      _erroruserNameMessage = "Nama harus lebih dari 2 Huruf";
    } else {
      // _isButtonuserNameValid = true;
      _isuserNameValid = true;
    }
    // print(_isButtonuserNameValid);
    notifyListeners();
  }

  ///////////////////// hide pw///////////////////
  /// void showHidePassword() {
  void showHidePassword() {
    _isHidePassword = !_isHidePassword;
    notifyListeners();
  }

////////////////////fungsi registrasi/////////////////////
  register(BuildContext context) async {
    print(emailController.text);
    print(passwordController.text);
    print(userNameController.text);
    try {
      // ignore: unused_local_variable
      final response = await Dio().post(
          'https://sociops-backend-production.up.railway.app/auth/signup',
          data: {
            "email": emailController.text,
            "password": passwordController.text,
            "role": "USER",
            "name": userNameController.text,
          });

      // ignore: use_build_context_synchronously
      navigateToLoginScreen(context);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        // Handle DioError
        if (e.response!.data['message'] == "ERROR_CREATE_USER") {
          showDialogDuplicate(context);
          print('duplicate');
        } else if (e.response!.data['message'] == "ERROR_INPUT_VALIDATION") {
          showTextFieldKosong(context);
          // DioError without response
          print('field kosong: ${e.error}');
        }
      } else {
        // Handle other exceptions
        print('Error: $e');
      }
    }
  }

///////////// navigate to screen/////////
  void navigateToLoginScreen(BuildContext context) {
    // Delay selama 2 detik
    Future.delayed(const Duration(seconds: 2), () {
      // Navigasi ke layar beranda (HomeScreen) setelah penundaan selesai
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
        (route) => false,
      );
    });
  }

  void showDialogDuplicate(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Kesalahan',
            style: FontFamily().mediumteks,
          ),
          content:
              Text('Email ini sudah terdaftar', style: FontFamily().primary),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup',
                  style: FontFamily()
                      .mediumteks
                      .copyWith(fontSize: 16, color: ColorStyle().primaryblue)),
            ),
          ],
        );
      },
    );
  }

  void showTextFieldKosong(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Kesalahan',
            style: FontFamily().mediumteks,
          ),
          content: Text('Anda blm mengisi form', style: FontFamily().primary),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup',
                  style: FontFamily()
                      .mediumteks
                      .copyWith(fontSize: 16, color: ColorStyle().primaryblue)),
            ),
          ],
        );
      },
    );
  }
}
