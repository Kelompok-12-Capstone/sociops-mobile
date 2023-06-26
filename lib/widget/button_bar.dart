import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:sociops/screen/fitur_volunteer/aksi_volunteer_screen.dart';
import 'package:sociops/screen/fitur_volunteer/ambil_aksi_screen.dart';

class Button {
  Widget buttonbar(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AmbilAksiScreen()));
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
        fixedSize: const MaterialStatePropertyAll(Size(360, 55)),
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
      onPressed: () {
        Navigator.push(
          context as BuildContext,
          MaterialPageRoute(
            builder: (context) => const AksiScreen(),
          ),
        );
      },
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
