import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_home/filter_screen.dart';
import 'package:sociops/screen/fitur_home/urutan_screen.dart';
import 'package:sociops/style/color_style.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Cari',
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 35,
                                width: 370,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF9FAFB),
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                padding: const EdgeInsets.only(left: 12),
                                child: 
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Cari', 
                                    hintStyle: const TextStyle(fontSize: 16),
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5, 
                                  color: ColorStyle().buttonColor,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                color: ColorStyle().buttonColor,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const UrutanScreen(),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.swap_vert_sharp,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5, 
                                  color: ColorStyle().buttonColor,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                color: ColorStyle().buttonColor,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const FilterScreen(),
                                        ),
                                      );
                                    }, 
                                    icon: Icon(
                                      Icons.filter_list_sharp,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ),
                      ),
                      const SizedBox(height: 16),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: SizedBox(
                                width: 138,
                                height: 44,
                                child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFFFFFFFF),
                                  ),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26.0),
                                      side: const BorderSide(
                                        width: 1.5, color: Color(0xFF444CE7),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Semua',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xFF444CE7),
                                  ),
                                ),
                              ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: SizedBox(
                            width: 132,
                            height: 44,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFFFFFFFF),
                                ),
                                shape:
                                    MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26.0),
                                        side: const BorderSide(
                                          width: 1.5, color: Color(0xFF444CE7),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Umum',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: const Color(0xFF444CE7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: SizedBox(
                                width: 123,
                                height: 44,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color(0xFFFFFFFF),
                                    ),
                                    shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(26.0),
                                          side: const BorderSide(
                                            width: 1.5, color: Color(0xFF444CE7),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Bencana',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color(0xFF444CE7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  width: 123,
                                  height: 44,
                                  child: OutlinedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                        const Color(0xFFFFFFFF),
                                      ),
                                      shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(26.0),
                                            side: const BorderSide(
                                              width: 1.5, color: Color(0xFF444CE7),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Pendidikan',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: const Color(0xFF444CE7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: SizedBox(
                                    width: 123,
                                    height: 44,
                                    child: OutlinedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(
                                          const Color(0xFFFFFFFF),
                                        ),
                                        shape:
                                          MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(26.0),
                                              side: const BorderSide(
                                                width: 1.5, color: Color(0xFF444CE7),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Lainnya',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: const Color(0xFF444CE7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ),
                      ]
                    ),
                    const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hasil Pencarian',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              '0 ditemukan',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorStyle().primaryblue,
                              ),
                            ),
                          ),
                        ]
                      ),
                    ), 
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset('assets/search.png'),
                    ),
                  ]
                ),
              ),
            ),
          );
        }
      }