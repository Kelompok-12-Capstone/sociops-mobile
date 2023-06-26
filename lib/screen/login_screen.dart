import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/register_screen.dart';
import '../provider/button_register.dart';
import '../provider/text_field_register.dart';
import '../provider/user/login_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.white,
      //   leading: const BackButton(
      //     color: Color(0XFF444CE7),
      //   ),
      // ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/house.png'),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          Text(
                            'Masuk ke akun Anda',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Masukkan email dan kata sandi Anda untuk masuk ke akun',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textFormRegistrasi(
                                  labelText: "Email",
                                  onChanged: (value) {
                                    loginProvider.validateEmail(value);
                                  },
                                  controller: loginProvider.emailController,
                                  hintText: 'Masukkan Email anda',
                                  errorMessage: loginProvider.errorEmailMessage,
                                  isValidTextField: loginProvider.isEmailValid,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textFormRegistrasi(
                                  labelText: "Password",
                                  onChanged: (value) {
                                    loginProvider.validatePassword(value);
                                  },
                                  controller: loginProvider.passwordController,
                                  hintText: '*********',
                                  errorMessage:
                                      loginProvider.errorPasswordMessage,
                                  isValidTextField:
                                      loginProvider.isPasswordValid,
                                  isObsucreText: loginProvider.isHidePassword,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      loginProvider.showHidePassword();
                                    },
                                    icon: loginProvider.isHidePassword
                                        ? const Icon(Icons.remove_red_eye)
                                        : const Icon(
                                            Icons.visibility_off,
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Column(
                            children: [
                              ButtonRegister(
                                onPressed: () {
                                  loginProvider.login(context);
                                  loginProvider.emailController.clear();
                                  loginProvider.passwordController.clear();
                                },
                                isIcon: true,
                                title: 'Masuk',
                              ),
                            ],
                          ),
                          const SizedBox(height: 290),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tidak punya akun ?",
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Buat akun',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
