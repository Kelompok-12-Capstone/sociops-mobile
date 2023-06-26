// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Notifikasi> {
  bool _isSelectedTransfer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Notifikasi',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelectedTransfer = !_isSelectedTransfer;
                      });
                    },
                    child: Container(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryBox(
                      text: 'All',
                      color: AppColors.arrowColor,
                      width: 105,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Galang Dana',
                      color: AppColors.arrowColor,
                      width: 105,
                    ),
                    SizedBox(width: 8),
                    CategoryBox(
                      text: 'Volunteer',
                      color: AppColors.arrowColor,
                      width: 105,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hari ini',
                    style: Styles.resultTe,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(187, 250, 168, 1),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Color.fromARGB(255, 19, 163, 24),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Donation successful', style: Styles.resultTe),
                          SizedBox(height: 8),
                          Text(
                            'You have successfully donated',
                            style: Styles.resultText,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '4 days ago',
                            style: Styles.resultText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Minggu ini',
                    style: Styles.resultTe,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(250, 168, 168, 1),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 163, 19, 19),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Donation canceled',
                            style: Styles.resultTe,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'You canceled donation',
                            style: Styles.resultText,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '4 days ago',
                            style: Styles.resultText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryBox extends StatefulWidget {
  final String text;
  final Color color;
  final double width; // Add width parameter

  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
    this.width = 80, // Set a default width value
  });

  @override
  _CategoryBoxState createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: widget.width, // Use the width parameter
        decoration: BoxDecoration(
          color: _isSelected ? widget.color : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.arrowColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: _isSelected ? Colors.white : AppColors.arrowColor,
            ),
          ),
        ),
      ),
    );
  }
}
