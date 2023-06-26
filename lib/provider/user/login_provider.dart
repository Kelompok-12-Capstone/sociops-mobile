// ignore_for_file: avoid_print, prefer_final_fields, use_build_context_synchronously
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:sociops/provider/user/save_token.dart';
import 'package:sociops/screen/register_screen.dart';

import '../../screen/bottom_screen.dart';
import '../../style/color_style.dart';
import '../../style/font_style.dart';

class LoginProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Button Prorerty
  bool _isButtonEmailDisable = false;
  bool get isButtonEmailDisable => _isButtonEmailDisable;

  bool _isButtonPasswordDisable = false;
  bool get isButtonPasswordDisable => _isButtonPasswordDisable;
  // End Button

  // Email Property
  String _email = "";
  String get email => _email;

  bool _isEmailValid = true;
  bool get isEmailValid => _isEmailValid;

  String _errorEmailMessage = "";
  String get errorEmailMessage => _errorEmailMessage;

  bool _isButtonEmailValid = false;
  bool get isButtonEmailValid => _isButtonEmailValid;

  void validateEmail(String value) {
    _email = value;
    if (_email.isEmpty) {
      _errorEmailMessage = "Email Tidak Boleh Kosong";
      _isEmailValid = false;
    } else if (!EmailValidator.validate(_email)) {
      _errorEmailMessage = "Email Tidak Sesuai";
      _isEmailValid = false;
      _isButtonEmailValid = false;
    } else {
      _isEmailValid = true;
      _isButtonEmailValid = true;
    }
    print(_isButtonEmailValid);

    notifyListeners();
  }
  // End Email

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
    } else if (_password.length < 4) {
      _errorPasswordMessage = "Password harus lebih dari 4";
      _isPasswordValid = false;
      // _isButtonPasswordValid = false;
    } else {
      // _isButtonPasswordValid = true;
      _isPasswordValid = true;
    }
    // print(_isButtonPasswordValid);
    // notifyListeners();
  }

  void showHidePassword() {
    _isHidePassword = !_isHidePassword;
    notifyListeners();
  }

  // bool disableButtonLogin() {
  //   bool isDisableButton = isButtonPasswordValid && isButtonEmailValid;

  //   print("halo $isDisableButton");
  //   return isDisableButton;
  // }

  // void saveToken(String token) {
  //   // Simpan token ke shared preferences
  //   SharedPref.saveToken(token);
  // }

  login(BuildContext context) async {
    print(emailController.text);
    print(passwordController.text);

    Dio dio = Dio();

    try {
      Response response = await dio.post(
          'https://sociops-backend-production.up.railway.app/auth/signin',
          data: {
            "email": emailController.text,
            "password": passwordController.text,
          });
      print(response);
      if (response.statusCode == 200) {
        print(response.data["data"]['access_token']);
        saveToken(response.data['data']
            ['access_token']); // Simpan token ke shared preferences
        navigateToHomeScreen(context); // Navigasi ke layar beranda
      }
      notifyListeners();
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        // Handle DioError
        if (e.response!.data['message'] == "ERROR_USER_NOT_FOUND") {
          showDialogEmailNotFound(context);
          print('gada ini orangnya');
          // print('Error from server (400): ${e.response}');
        } else if (e.response!.data['message'] == "ERROR_PASSWORD_NOT_MATCH") {
          showDialogPasswordSalah(context);
          print('salah we pw nya');
        } else if (e.response!.data['message'] == "ERROR_INPUT_VALIDATION") {
          showDialogTextFieldKosong(context);
          print('TeksField masi kosong');
        } else {
          // DioError without response
          print('Error from server (no response): ${e.error}');
        }
      } else {
        // Handle other exceptions
        print('Error: $e');
      }
    }
  }

  void navigateToHomeScreen(BuildContext context) {
    // Navigasi ke layar beranda  (HomeScreen)
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const BottomNavbarScreen(),
        ),
        (route) => false);
  }

  void navigateToRegisterPage(
    BuildContext context,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const RegisterScreen(),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  ////////////////////// dialog//////////////
  void showDialogEmailNotFound(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Kesalahan',
            style: FontFamily().mediumteks,
          ),
          content:
              Text('Email Anda Belum Terdaftar', style: FontFamily().primary),
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

  void showDialogPasswordSalah(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Kesalahan',
            style: FontFamily().mediumteks,
          ),
          content: Text('Password yang Anda Masukkan Salah',
              style: FontFamily().primary),
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

  void showDialogTextFieldKosong(BuildContext context) {
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

  ////////////// save token ////////
  void saveToken(String token) {
    // Simpan token ke shared preferences
    SharedPref.saveToken(token);
  }
}
