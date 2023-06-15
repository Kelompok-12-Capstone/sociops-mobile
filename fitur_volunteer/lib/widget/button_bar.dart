import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/ambil_aksi_screen.dart';

class Button {
  Widget buttonbar(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AmbilAksiScreen()));
          },
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color(0XFF444CE7)),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.all(16),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          child: Text(
            'Ambil aksi',
            style: GoogleFonts.inter(
                fontSize: 16,
                // color: const Color(0XFF444CE7),
                fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget moreButton() {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(360, 55)),
        backgroundColor: MaterialStatePropertyAll(Colors.lightBlue[50]),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(16),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Lihat Selengkapnya',
        style: GoogleFonts.inter(
            fontSize: 16,
            color: const Color(0XFF444CE7),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
