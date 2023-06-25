// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sociops/screen/bottom_screen.dart';
import 'package:sociops/screen/fitur_donation/failed_payment_screen.dart';
import 'package:sociops/screen/fitur_donation/model/transaction_model.dart';
import 'package:sociops/screen/fitur_donation/success_payment_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

// ignore: must_be_immutable
class CodePaymentScreen extends StatefulWidget {
  final String selectedAmount;
  final String? selectedPaymentMethod;
  final ActionsResponse? actions;
  final Data? status;

  const CodePaymentScreen({
    Key? key,
    required this.selectedAmount,
    this.selectedPaymentMethod,
    this.actions,
    this.status,
  }) : super(key: key);

  @override
  State<CodePaymentScreen> createState() => _CodePaymentScreenState();
}

class _CodePaymentScreenState extends State<CodePaymentScreen> {
  final int fee = 1000;

  DateTime transactionDate = DateTime.now();

  DateTime paymentDeadline = DateTime.now()
      .add(const Duration(days: 1))
      .subtract(const Duration(seconds: 1));

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return '';
    }
  }

  String generatedCode = '';

  @override
  void initState() {
    super.initState();
    generatedCode = generateRandomCode();
  }

  String generateRandomCode() {
    var rng = Random();
    String code = '';
    for (var i = 0; i < 10; i++) {
      code += rng.nextInt(10).toString();
    }
    return code;
  }

  bool isButtonPressed = false;

  ActionsResponse? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Kode pembayaran',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 48),
                const Center(
                  child: Image(
                    image: AssetImage('assets/wait.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Complete the payment of Rp${NumberFormat('#,##0').format(int.parse(widget.selectedAmount) + fee)}',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  '${paymentDeadline.day} ${_getMonthName(paymentDeadline.month)} ${paymentDeadline.year} at ${paymentDeadline.hour.toString().padLeft(2, '0')}.${paymentDeadline.minute.toString().padLeft(2, '0')}',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFE0EAFF),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      // Text(
                      //   '${widget.selectedPaymentMethod}',
                      //   style: GoogleFonts.inter(
                      //     fontWeight: FontWeight.w600,
                      //     fontSize: 16,
                      //   ),
                      // ),
                      const SizedBox(height: 16),
                      Text(
                        'Kode Transaksi',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        generatedCode,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 109,
                        height: 48,
                        child: TextButton.icon(
                          onPressed: () {
                            Clipboard.setData(
                                ClipboardData(text: generatedCode));
                          },
                          icon: const Icon(
                            Icons.copy_outlined,
                            color: Color(0XFF444CE7),
                          ),
                          label: Text(
                            'Copy',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0XFF444CE7),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFEEF4FF),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 150,
            child: Column(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: 396,
                  height: 60,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF444CE7),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      String? url;
                      if (widget.actions?.desktopWebCheckoutUrl != null) {
                        url = widget.actions?.desktopWebCheckoutUrl;
                      } else if (widget.actions?.mobileWebCheckoutUrl != null) {
                        url = widget.actions?.mobileWebCheckoutUrl;
                      } else if (widget.actions?.mobileDeeplinkCheckoutUrl !=
                          null) {
                        url = widget.actions?.mobileDeeplinkCheckoutUrl;
                      }
                      if (url != null) {
                        try {
                          // ignore: deprecated_member_use
                          bool launched = await launch(url);
                          if (launched) {
                            // Pembayaran berhasil
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SuccessPaymentScreen(),
                              ),
                            );
                          } else {
                            // Pembayaran gagal
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FailedPaymentScreen(),
                              ),
                            );
                          }
                        } catch (error) {
                          print('Error launching URL: $error');
                          // Pembayaran gagal
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FailedPaymentScreen(),
                            ),
                          );
                        }
                      } else {
                        print('URL is not available');
                        // Pembayaran gagal
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FailedPaymentScreen(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Pergi ke xendit',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 396,
                  height: 60,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.transparent,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavbarScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Kembali ke beranda',
                      style: TextStyle(
                        color: Color(0xFF444CE7),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void copyToClipboard(String text) {
  Clipboard.setData(ClipboardData(text: text));
}
