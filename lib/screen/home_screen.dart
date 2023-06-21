import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/login_screen.dart';
import 'package:sociops/style/color_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 78, 
                    width: 410, 
                    color: const Color(0xffFFFFFF),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 35,
                                width: 300,
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
                            Padding(
                              padding: const EdgeInsets.only(right: 12, left: 10),
                              child: SizedBox(
                                width: 170,
                                height: 35,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color(0xFF444CE7),
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26.0),
                                        side: const BorderSide(
                                        width: 1.5, 
                                        color: Color(0xFF444CE7),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Gabung Sociops',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center, 
                          clipBehavior: Clip.antiAliasWithSaveLayer,
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
                                          "assets/home.png",
                                          width: 10,
                                          height: 10,
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
                                        const SizedBox(height: 130),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 8),
                                            Container(
                                              width: 75,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(32.0),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.verified,
                                                      color: Color(0xFF444CE7),
                                                      size: Checkbox.width,
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
                                            Container(
                                              margin: const EdgeInsets.only(left: 8),
                                              width: 90,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(32.0),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Galang Dana',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.inter(
                                                    color: const Color(0xFF444CE7),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(right: 140),
                                child: Text(
                                  '#HariAnakSedunia2023, Mari Bersama Berdonasi',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(right: 16),
                                child: Text(
                                  'Bantu adik-adik kita dengan aksi bersama mendukung kampanye yang telah Unilever buat.',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                  ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                width: 500,
                                height: 44,
                                child: TextButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color(0xFFE0EAFF),
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Lihat Selengkapnya',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                        padding: const EdgeInsets.only(right: 280, left: 16),
                        child: Text(
                          'Program dan Tayangan',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              children: [
                                Image.asset(
                                  'assets/galang dana.png',
                                  fit: BoxFit.cover,
                                  width: 30,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 5, color: ColorStyle().buttonColor),
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Text(
                                    'Galang Dana',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/volunteer page.png',
                                  fit: BoxFit.cover,
                                  width: 30,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 5, color: ColorStyle().buttonColor),
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Text(
                                    'Volunteer',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/campaign.png',
                                  fit: BoxFit.cover,
                                  width: 30,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 5, color: ColorStyle().buttonColor),
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Text(
                                    'Campaign',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorStyle().primaryblue,
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/komunitas.png',
                                  width: 30,
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 5, color: ColorStyle().buttonColor),
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Text(
                                    'Komunitas',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorStyle().primaryblue,
                                    ),
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
                            'Penggalangan Dana',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                            onPressed: (){}, 
                            child: Text(
                              'LIHAT SEMUA',
                              style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorStyle().primaryblue,
                              ),
                            ),
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26.0),
                                    side: const BorderSide(
                                        width: 1.5, color: Color(0xFF444CE7)),
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26.0),
                                    side: const BorderSide(
                                        width: 1.5, color: Color(0xFF444CE7)),
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                  const SizedBox(height: 20),
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
                                    "assets/bookmark (2).png",
                                    width: 10,
                                    height: 10,
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
                                        MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 36,
                                        decoration: const BoxDecoration(
                                            color: Color(0xFFEEF4FF),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons.bookmark_border,
                                          color: Color(0xFF444CE7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 130),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 54,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                            BorderRadius.circular(32.0),
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
                                        width: 110,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                            BorderRadius.circular(32.0),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.verified,
                                                  color: Color(0xFF444CE7),
                                                  size: Checkbox.width,
                                                ),
                                                Text(
                                                  'SkilledUp Life',
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
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                '1 Aksi = Rp10.000',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xFF039855),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '#BisaBebasStunting: Donasi untuk Bantu Pengobatan',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
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
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Volunteer',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: TextButton(
                                onPressed: (){}, 
                                child: Text(
                                  'LIHAT SEMUA',
                                  style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: ColorStyle().primaryblue,
                                  ),
                                ),
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
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center, 
                      clipBehavior: Clip.antiAliasWithSaveLayer,
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
                                      "assets/galang dana page.png",
                                      width: 10,
                                      height: 10,
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
                                        width: 100,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(32.0),
                                          color: Colors.red,
                                        ),
                                      child: Center(
                                        child: Text(
                                          'SEGERA TUTUP',
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
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE0EAFF),
                                        borderRadius: BorderRadius.all(Radius.circular(50),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.bookmark_border,
                                        color: Color(0xFF444CE7),
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
                                          color: ColorStyle().buttonColor,
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
                                        width: 75,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(32.0),
                                          color: ColorStyle().buttonColor,
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.verified,
                                                color: Color(0xFF444CE7),
                                                size: Checkbox.width,
                                              ),
                                              Text(
                                                'Hyundai',
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
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(right: 370),
                          width: 85,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorStyle().buttonColor),
                            borderRadius: BorderRadius.circular(32.0),
                            color: ColorStyle().backgroundfield,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF444CE7),
                                  size: Checkbox.width,
                                ),
                                Text(
                                  'Indonesia',
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
                        const SizedBox(height: 8),
                        Text(
                          'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          margin: const EdgeInsets.only(right: 16),
                          child: Text(
                            'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                             style: GoogleFonts.inter(
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 500,
                          height: 44,
                          child: TextButton(
                            onPressed: (){},
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
                              'Daftar',
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
                  const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Berita Terbaru',
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: TextButton(
                                onPressed: (){}, 
                                child: Text(
                                  'LIHAT SEMUA',
                                  style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: ColorStyle().primaryblue,
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 160,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                          side: BorderSide(
                            width: 1,
                            color: ColorStyle().kotakColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 10),
                                  child: SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'assets/fundraising.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ), 
                                const SizedBox(height: 5),
                                Container(
                                  margin: const EdgeInsets.only(left: 18),
                                  width: 80,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32.0),
                                    color: ColorStyle().buttonColor,
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Fundraising',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF444CE7),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ), 
                            Row(
                              children: [
                                Container(
                                  width: 285,
                                  height: 140,
                                  margin: const EdgeInsets.only(
                                    top: 16,
                                    right: 40,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 195, bottom: 3),
                                          child: Text(
                                            '3 hari yang lalu',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          ),
                                          Text(
                                            'Seru! Salurkan Donasi Alat Kesenian untuk Anak-anak Desa Wagiri',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'Pada hari jumat tanggal 5 Mei 2023, komunitas Desa Wagiri membagikan alat kesenian',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          SizedBox(
                                            width: 600,
                                            height: 30,
                                            child: TextButton(
                                              onPressed: (){},
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  ColorStyle().buttonColor,
                                                ),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(32.0),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                'Baca selengkapnya',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                      ), 
                                    ), 
                                  ]
                                ), 
                              ]
                            ), 
                          ),
                        ),
                        Container(
                          height: 160,
                          margin: const EdgeInsets.only(left: 12, right: 12),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                              side: BorderSide(
                                width: 1,
                                color: ColorStyle().kotakColor,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                    padding: const EdgeInsets.only(left: 20, top: 10),
                                    child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/fundraising.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ), 
                                  const SizedBox(height: 5),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18),
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                        BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Volunteer',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xFF444CE7),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                                ), 
                                Row(
                                children: [
                                  Container(
                                    width: 285,
                                    height: 140,
                                    margin: const EdgeInsets.only(
                                      top: 16,
                                      right: 40,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 195, bottom: 3),
                                          child: Text(
                                            '3 hari yang lalu',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Seru! Salurkan Donasi Alat Kesenian untuk Anak-anak Desa Wagiri',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                        'Pada hari jumat tanggal 5 Mei 2023, komunitas Desa Wagiri membagikan alat kesenian',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      SizedBox(
                                        width: 600,
                                        height: 30,
                                        child: TextButton(
                                          onPressed: (){},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(
                                              ColorStyle().buttonColor,
                                            ),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(32.0),
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Baca selengkapnya',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: ColorStyle().primaryblue,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                  ), 
                                ), 
                              ]
                            ), 
                          ]
                        ), 
                      ),
                    ),
                    Container(
                      height: 160,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), 
                            side: BorderSide(
                              width: 1,
                              color: ColorStyle().kotakColor,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, top: 10),
                                    child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/fundraising.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ), 
                                  const SizedBox(height: 5),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18),
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                        BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Volunteer',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF444CE7),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                              ), 
                              Row(
                                children: [
                                  Container(
                                    width: 285,
                                    height: 140,
                                    margin: const EdgeInsets.only(
                                      top: 16,
                                      right: 40,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 195, bottom: 3),
                                          child: Text(
                                            '3 hari yang lalu',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Seru! Salurkan Donasi Alat Kesenian untuk Anak-anak Desa Wagiri',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'Pada hari jumat tanggal 5 Mei 2023, komunitas Desa Wagiri membagikan alat kesenian',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          SizedBox(
                                            width: 600,
                                            height: 30,
                                            child: TextButton(
                                              onPressed: (){},
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(
                                                  ColorStyle().buttonColor,
                                                ),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(32.0),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                'Baca selengkapnya',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                      ), 
                                    ), 
                                  ]
                                ), 
                              ]
                            ), 
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                          'Organizer',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                          onPressed: (){}, 
                          child: Text(
                            'LIHAT SEMUA',
                            style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: ColorStyle().primaryblue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 300,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      alignment: Alignment.center, 
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), 
                          side: BorderSide(
                            width: 1,
                            color: ColorStyle().kotakColor,
                          ),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 440,
                                    height: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        "assets/organizer.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.verified,
                                      color: Color(0xFF444CE7),
                                      size: Checkbox.width,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Hyundai',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF444CE7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 16, right: 16),
                                child: Text(
                                  'PT Hyundai adalah anak perusahaan penjualan dan distributor resmi Hyundai Motor Company yang merupakan produsen otomotif di Indonesia.',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                            ColorStyle().buttonColor,
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32.0),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Kunjungi profil',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: ColorStyle().primaryblue,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                            ColorStyle().kotakColor,
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32.0),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Ikuti',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: ColorStyle().backgroundfield,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 300,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        alignment: Alignment.center, 
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25), 
                            side: BorderSide(
                              width: 1,
                              color: ColorStyle().kotakColor,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: SizedBox(
                                      width: 440,
                                      height: 150,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "assets/organizer.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.verified,
                                      color: Color(0xFF444CE7),
                                      size: Checkbox.width,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Hyundai',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF444CE7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                margin: const EdgeInsets.only(left: 16, right: 16),
                                child: Text(
                                  'PT Hyundai adalah anak perusahaan penjualan dan distributor resmi Hyundai Motor Company yang merupakan produsen otomotif di Indonesia.',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                            ColorStyle().buttonColor,
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32.0),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Kunjungi profil',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: ColorStyle().primaryblue,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                            ColorStyle().kotakColor,
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32.0),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Ikuti',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: ColorStyle().primaryblue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),  
                      ]),
                    ), 
                  ]),
                ),
              ]),
            ]),
          ]),            
        ),
      ),
    );
  }
}
