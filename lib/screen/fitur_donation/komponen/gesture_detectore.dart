import 'package:flutter/material.dart';

import '../../../style/color_style.dart';
import '../../../style/font_style.dart';
import '../../fitur_organization/berita_detail_home.dart';

class GestureDetectoreWidget extends StatefulWidget {
  const GestureDetectoreWidget({Key? key}) : super(key: key);

  @override
  State<GestureDetectoreWidget> createState() => _GestureDetectoreWidgetState();
}

class _GestureDetectoreWidgetState extends State<GestureDetectoreWidget> {
  @override
  Widget build(BuildContext context) {
    String _selectedFilter = 'Day';
    return ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Choose Filter',
                style: Styles.resultTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Date',
                style: Styles.resultTextStyle,
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Day',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Week',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Month',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Year',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Category',
                style: Styles.resultTextStyle,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'General',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Education',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Disaster',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilter = 'Day';
                      });
                    },
                    child: SizedBox(
                      height: 35,
                      width: 20, // Mengatur tinggi kotak
                      child: CategoryBox(
                        text: 'Year',
                        color: _selectedFilter == 'Day'
                            ? AppColors.arrowColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Logic for apply button
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.Button,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Apply',
                    style: Styles.Result2,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
