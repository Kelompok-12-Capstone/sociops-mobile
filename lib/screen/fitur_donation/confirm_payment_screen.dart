import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sociops/screen/fitur_donation/code_payment_screen.dart';
import 'package:sociops/screen/fitur_donation/model/payment_method_model.dart';
import 'package:sociops/screen/fitur_donation/model/transaction_model.dart';
import 'package:sociops/screen/fitur_donation/service/payment_method_service.dart';
import 'package:sociops/screen/fitur_donation/service/transaction_service.dart';

// ignore: must_be_immutable
class ConfirmPaymentScreen extends StatefulWidget {
  final String selectedAmount;
  const ConfirmPaymentScreen({super.key, required this.selectedAmount});
  static const Color disabledButtonColor = Color(0XFFC7D7FE);

  @override
  State<ConfirmPaymentScreen> createState() => _ConfirmPaymentScreenState();
}

class _ConfirmPaymentScreenState extends State<ConfirmPaymentScreen> {
  final int fee = 1000;
  String? selectedPaymentMethod;
  bool isButtonDisabled = true;

  List<PaymentMethod> paymentMethods = [];

  @override
  void initState() {
    super.initState();
    getPaymentMethods();
  }

  TransactionResponse? transactionResponse;

  // ignore: unused_element
  Future<TransactionResponse?> _createTransaction(
    String amount,
    int paymentID,
  ) async {
    try {
      final data = await TransactionService.createTransaction(
        amount: int.parse(amount),
        paymentID: paymentID,
      );
      return data;
    } catch (error) {
      throw Exception('Failed to create transaction $error');
    }
  }

  void getPaymentMethods() {
    ApiPaymentMethodService.fetchPaymentMethods().then((response) {
      if (response.statusCode == 200) {
        setState(() {
          final List<dynamic> data = response.data['data'];
          paymentMethods =
              data.map((json) => PaymentMethod.fromJson(json)).toList();
        });
      } else {
        throw Exception('Failed to fetch payment methods');
      }
    }).catchError((error) {});
  }

  void checkButtonStatus() {
    setState(() {
      if (selectedPaymentMethod == null) {
        isButtonDisabled = true;
      } else {
        isButtonDisabled = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Konfirmasi donasi',
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
                const SizedBox(height: 16),
                Text(
                  'Donate amount',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Rp${NumberFormat('#,##0').format(int.parse(widget.selectedAmount))}',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donate to',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/circle.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SkillUp Life',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '#BisaBebasStunting: Donasi untuk Bantu',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Text(
                      'Payment method',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 396,
                      height: 72,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Choose payment method',
                          filled: true,
                          fillColor: const Color(0XFFF9FAFB),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        dropdownColor: Colors.white,
                        value: selectedPaymentMethod,
                        items: paymentMethods.map(
                          (paymentMethod) {
                            return DropdownMenuItem<String>(
                              value: paymentMethod.id.toString(),
                              child: Row(
                                children: [
                                  Image.network(
                                    paymentMethod.image,
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    paymentMethod.name,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: (String? newValue) {
                          setState(
                            () {
                              selectedPaymentMethod = newValue;
                              checkButtonStatus();
                            },
                          );
                        },
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 16),
                    Text(
                      'Donate details',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Donate amount',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Rp${NumberFormat('#,##0').format(int.parse(widget.selectedAmount))}',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transaction fee',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Rp ${NumberFormat('#,##0').format(fee)}',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Rp${NumberFormat('#,##0').format(int.parse(widget.selectedAmount) + fee)}',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
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
            width: 396,
            height: 60,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  selectedPaymentMethod != null
                      ? const Color(0xFF444CE7)
                      : ConfirmPaymentScreen.disabledButtonColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              onPressed: isButtonDisabled
                  ? null
                  : () async {
                      final data = await TransactionService.createTransaction(
                        amount: int.parse(widget.selectedAmount),
                        paymentID: int.parse(selectedPaymentMethod!),
                      );
                      // print(data?.data?.logs?.actions?.desktopWebCheckoutUrl);
                      // print(data?.data?.logs?.actions?.mobileWebCheckoutUrl);
                      // print(
                      //     data?.data?.logs?.actions?.mobileDeeplinkCheckoutUrl);
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CodePaymentScreen(
                            selectedAmount: widget.selectedAmount,
                            selectedPaymentMethod: selectedPaymentMethod!,
                            actions: data?.data?.logs?.actions,
                            status: data?.data,
                          ),
                        ),
                      );
                    },
              child: Text(
                'Bayar',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
