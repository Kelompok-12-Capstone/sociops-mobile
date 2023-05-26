import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_teast_new/constants/app_colors.dart';
import 'package:login_teast_new/widgets/custom_icon_button.dart';
import 'package:login_teast_new/widgets/phone_number_input.dart';
import 'package:login_teast_new/constants/app_styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPhoneNumberValid = false;

  void setPhoneNumberValidity(bool isValid) {
    setState(() {
      isPhoneNumberValid = isValid;
    });
  }

  void sendOTP() {
    // Implement your OTP sending logic here
    print('Sending OTP...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: CustomIconButton(
            icon: Icons.arrow_back,
            color: AppColors.primaryColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Masuk dengan Nomor',
              style: GoogleFonts.inter(
                textStyle: AppStyles.titleText,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/images/phone.png',
              height: 272,
              width: 272,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Kami akan mengirimkan ',
                    style: GoogleFonts.inter(
                      textStyle: AppStyles.bodyText,
                    ),
                  ),
                ),
                Text(
                  'One Time Password',
                  style: GoogleFonts.inter(
                    textStyle: AppStyles.boldText,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    ' ke ',
                    style: GoogleFonts.inter(
                      textStyle: AppStyles.bodyText,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'nomor telepon ini',
                  style: GoogleFonts.inter(
                    textStyle: AppStyles.bodyText,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Masukkan Nomor Telepon',
                style: GoogleFonts.inter(
                  textStyle: AppStyles.bodyText.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 25),
            PhoneNumberInput(setPhoneNumberValidity: setPhoneNumberValidity),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 32.0, top: 120.0),
                  child: InkWell(
                    onTap: isPhoneNumberValid ? sendOTP : null,
                    highlightColor: Colors.transparent,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 350),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.center,
                      child: Text(
                        'Kirim kode OTP',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: isPhoneNumberValid
                            ? AppColors.primaryColor
                            : AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
