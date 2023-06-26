// import 'package:dio/dio.dart' as dio; // Importing Dio with an alias
// import 'package:get/get_connect/http/src/response/response.dart' as getConnect; // Importing GetConnect Response with an alias
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sociops/screen/login_screen.dart';
import '../provider/button_register.dart';
import '../provider/text_field_register.dart';
import '../provider/user/register_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ////kondisi///

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<RegisterProvider>(context);
    return Scaffold(
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
                            'Buat akun baru!',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Buat akun Anda dan dapatkan akses pertama ke campaign dan komunitas Sociops',
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
                                    labelText: "Nama",
                                    onChanged: (value) {
                                      registerProvider.validateuserName(value);
                                    },
                                    controller:
                                        registerProvider.userNameController,
                                    hintText: 'masukkan nama kamu',
                                    errorMessage:
                                        registerProvider.erroruserNameMessage,
                                    isValidTextField:
                                        registerProvider.isuserNameValid),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textFormRegistrasi(
                                    labelText: "Email",
                                    onChanged: (value) {
                                      registerProvider.validateEmail(value);
                                    },
                                    controller:
                                        registerProvider.emailController,
                                    hintText: 'Capstone11@gmail.com',
                                    errorMessage:
                                        registerProvider.errorEmailMessage,
                                    isValidTextField:
                                        registerProvider.isEmailValid),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textFormRegistrasi(
                                  labelText: "Password",
                                  onChanged: (value) {
                                    registerProvider.validatePassword(value);
                                  },
                                  controller:
                                      registerProvider.passwordController,
                                  hintText: 'password',
                                  errorMessage:
                                      registerProvider.errorPasswordMessage,
                                  isValidTextField:
                                      registerProvider.isPasswordValid,
                                  isObsucreText:
                                      registerProvider.isHidePassword,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      registerProvider.showHidePassword();
                                    },
                                    icon: registerProvider.isHidePassword
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Column(
                              children: [
                                ButtonRegister(
                                  isIcon: true,
                                  onPressed: () {
                                    registerProvider.register(context);
                                    registerProvider.emailController.clear();
                                    registerProvider.passwordController.clear();
                                    registerProvider.userNameController.clear();
                                  },
                                  title: "Buat Akun",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 230),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sudah punya akun?",
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
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Masuk',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
