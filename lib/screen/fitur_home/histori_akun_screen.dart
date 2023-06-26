import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoriAkun extends StatelessWidget {
  const HistoriAkun({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Histori akun',
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 192,
                          height: 44,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF444CE7),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    width: 1.5,
                                    color: Color(0xFF444CE7),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Terbaru ke terlama',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 192,
                          height: 44,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFFFFFFF),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  side: const BorderSide(
                                    width: 1.5,
                                    color: Color(0xFF444CE7),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sedang berjalan',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color(0xFF444CE7),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Tentang Riwayat Akun',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Tinjau perubahan yang Anda buat pada akun',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Bulan ini',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda menjadi “Hai saya disini!”                          4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda menjadi “Hai saya disini!”                          4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda menjadi “Hai saya disini!”                          4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda menjadi “Hai saya disini!”                          4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda                                                                         4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                const SizedBox(height: 12),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Tahun lalu',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda                                                                         4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda                                                                         4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Bio',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Anda mengubah bio anda                                                                         4m',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  isThreeLine: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
