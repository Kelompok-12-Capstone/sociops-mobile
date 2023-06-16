import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> carouselItems = [
    Column(
      children: [
        const Image(
          image: AssetImage('assets/carousel-screen1.png'),
          fit: BoxFit.contain,
        ),
        Text(
          'Berdonasi dengan mudah, cepat, dan tepat sasaran',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    Column(
      children: [
        const Image(
          image: AssetImage('assets/carousel-screen2.png'),
          fit: BoxFit.contain,
        ),
        Text(
          'Buat penggalangan dana Anda sendiri dan publikasikan ke sosial media',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    Column(
      children: [
        const Image(
          image: AssetImage('assets/carousel-screen3.png'),
          fit: BoxFit.contain,
        ),
        Text(
          'Terpercaya, transparan, dan efektif dalam berbagi kebaikan',
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                height: 500,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < carouselItems.length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _current = i;
                    });
                    _controller.animateToPage(_current);
                  },
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark)
                            ? const Color(0XFFEAECF0)
                            : const Color(0XFF444CE7)
                                .withOpacity(_current == _current ? 0.9 : 0.4)),
                  ),
                ),
            ],
          ),
          SizedBox(
            width: 396,
            height: 60,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF444CE7),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Bergabung dengan Sociops',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFFEEF4FF),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 396,
            height: 60,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Lanjutkan tanpa akun',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFF444CE7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
