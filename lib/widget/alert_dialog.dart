import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/bottom_screen.dart';

class Alert {
  Future doneAlert(context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          icon: CircleAvatar(
            backgroundColor: Colors.green[100],
            child: const Icon(
              Icons.check_circle_outlined,
              color: Colors.green,
            ),
          ),
          title: Text(
            'Selamat!',
            style: GoogleFonts.inter(fontWeight: FontWeight.w700),
          ),
          content: Text(
            'Anda telah menyelesaikan tantangan. Perbanyak aksi untuk menebar kebaikan bersama Sociops',
            style: GoogleFonts.inter(color: Colors.grey[500]),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavbarScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(300, 55)),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0XFF444CE7)),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              child: Text(
                'Kembali ke beranda',
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
            ),
          ],
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
        );
      },
    );
  }

  Future errDialog(context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            icon: CircleAvatar(
              backgroundColor: Colors.red[100],
              child: const Icon(
                Icons.error_outline_rounded,
                color: Colors.red,
              ),
            ),
            title: Text(
              'Oh tidak, maaf!',
              style: GoogleFonts.inter(fontWeight: FontWeight.w700),
            ),
            content: Text(
              'Sepertinya ada masalah saat mengunggah. Coba lagi nanti',
              style: GoogleFonts.inter(color: Colors.grey[500]),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavbarScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  side: const MaterialStatePropertyAll(
                    BorderSide(color: Colors.grey),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                child: Text(
                  'Kembali ke beranda',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  // fixedSize:
                  //     const MaterialStatePropertyAll(Size(300, 55)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0XFF444CE7)),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                child: Text(
                  'Coba lagi',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                ),
              ),
            ],
            actionsAlignment: MainAxisAlignment.spaceAround,
            actionsPadding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
          );
        });
  }
}
