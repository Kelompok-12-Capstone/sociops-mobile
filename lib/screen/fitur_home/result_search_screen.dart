import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_home/filter_screen.dart';
import 'package:sociops/screen/fitur_home/urutan_screen.dart';
import 'package:sociops/style/color_style.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
                          '39 ditemukan',
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
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0XFFFEE4E2),
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 600,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "assets/result_image.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          right: 8,
                          bottom: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 86,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '3 HARI LAGI',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
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
                                          onPressed: (){},
                                          icon: Icon(
                                            Icons.bookmark_border,
                                            color: ColorStyle().primaryblue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 130),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Umum',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF444CE7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 80,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                        color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.verified,
                                            color: Color(0xFF444CE7),
                                          ),
                                          Text(
                                            'Unilever',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFF444CE7),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 372,
                      height: 30,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFECFDF3),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '1 Aksi = Rp. 10.000',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xFF039855),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Gerakan #SemuaBisaTersenyum, Kampanye Peduli Kesejahjateraan Anak',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp233.461.250',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '72%',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0XFFFEF3F2),
                      color: Color(0XFFD92D20),
                      value: 72 / 100,
                      minHeight: 12,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 372,
                      height: 44,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFEF3F2),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Donasi sekarang',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xFFD92D20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0XFFFEE4E2),
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 600,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "assets/result_image.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          right: 8,
                          bottom: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 86,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '3 HARI LAGI',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
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
                                          onPressed: (){},
                                          icon: Icon(
                                            Icons.bookmark_border,
                                            color: ColorStyle().primaryblue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 130),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32.0),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Umum',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF444CE7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 80,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(32.0),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.verified,
                                            color: Color(0xFF444CE7),
                                          ),
                                          Text(
                                            'Unilever',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFF444CE7),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 372,
                      height: 30,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFECFDF3),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '1 Aksi = Rp. 10.000',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xFF039855),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Gerakan #SemuaBisaTersenyum, Kampanye Peduli Kesejahjateraan Anak',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp233.461.250',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '72%',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0XFFFEF3F2),
                      color: Color(0XFFD92D20),
                      value: 72 / 100,
                      minHeight: 12,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 372,
                      height: 44,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFEF3F2),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Donasi sekarang',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xFFD92D20),
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ]
          ),          
        ),
      ),
    );
  }
}