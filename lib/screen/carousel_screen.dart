import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sociops/screen/home_screen.dart';
import 'package:sociops/screen/login_screen.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> carouselItems = [
    SizedBox(
      width: 396,
      height: 64,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/carousel-screen1.png'),
            width: 390,
            height: 390,
            fit: BoxFit.contain,
          ),
          Text(
            'Berdonasi dengan mudah, cepat, dan tepat sasaran',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 396,
      height: 64,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/carousel-screen2.png'),
            width: 390,
            height: 390,
            fit: BoxFit.contain,
          ),
          Text(
            'Buat penggalangan dana Anda sendiri dan publikasikan ke sosial media',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 396,
      height: 64,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/carousel-screen3.png'),
            width: 390,
            height: 390,
            fit: BoxFit.contain,
          ),
          Text(
            'Terpercaya, transparan, dan efektif dalam berbagi kebaikan',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CarouselSlider(
              items: carouselItems,
              carouselController: _controller,
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: true,
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
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark)
                            ? const Color(0XFFEAECF0)
                            : const Color(0XFF444CE7)
                                .withOpacity(_current == i ? 0.9 : 0.4)),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
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
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomeScreen(),
                //   ),
                // );
              },
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
