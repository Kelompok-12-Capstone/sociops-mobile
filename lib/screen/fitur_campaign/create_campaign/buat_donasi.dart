import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/pengisian_donasi.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class BuatDonasiScreen extends StatefulWidget {
  const BuatDonasiScreen({Key? key}) : super(key: key);

  @override
  State<BuatDonasiScreen> createState() => _BuatDonasiScreenState();
}

class _BuatDonasiScreenState extends State<BuatDonasiScreen> {
  DateTime? _startDate;
  DateTime? _endDate;

  final DateFormat _dateFormat = DateFormat.yMMMMd();

  void _selectDateRange(BuildContext context) async {
    final pickedDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: _startDate != null && _endDate != null
          ? DateTimeRange(start: _startDate!, end: _endDate!)
          : null,
      firstDate: DateTime(2021),
      lastDate: DateTime(2023),
    );

    if (pickedDateRange != null) {
      setState(() {
        _startDate = pickedDateRange.start;
        _endDate = pickedDateRange.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Penggalangan Dana",
          style: FontFamily().mediumteks.copyWith(fontSize: 24),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Profile Organizer',
                  style: FontFamily()
                      .mediumteks
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ),
                Text(
                  "Thiyara Al-Mawaddah",
                  style: FontFamily().mediumteks,
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TeksFormField(hinText: "Tambah Lokasi Campaign"),
                      const SizedBox(height: 8),
                      Container(
                        width: 396, // atur lebar kontainer sesuai kebutuhan
                        height: 54, // atur tinggi kontainer sesuai kebutuhan
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorStyle().primaryblue),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _startDate != null && _endDate != null
                                  ? '  ${_dateFormat.format(_startDate!)} - ${_dateFormat.format(_endDate!)}'
                                  : '  Tambahkan periode campaign',
                              style: FontFamily()
                                  .mediumteks
                                  .copyWith(fontSize: 14),
                            ),
                            IconButton(
                              onPressed: () {
                                _selectDateRange(context);
                              },
                              icon: Icon(Icons.arrow_drop_down_circle,
                                  color: ColorStyle().primaryblue),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
                      ButtonPrimay(
                          teks: "Selanjutnya",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    (const PengisianDonasiScreen()),
                              ),
                            );
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
