import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:sociops/screen/fitur_donation/select_payment_screen.dart';

import '../../model/model_fundaraising.dart';

class DetailFundaraising extends StatefulWidget {
  final String? totalAmountCollection;
  final String? title;
  final String? image;
  final String? location;
  final String? description;
  final String? categoryName;
  final String? totalActiondonation;
  final String? organizerName;
  final String? video;
  final String? organizerPhotoUrl;

  const DetailFundaraising(
      {super.key,
      this.totalAmountCollection,
      this.title,
      this.image,
      this.location,
      this.description,
      required Fundaraising datum,
      this.categoryName,
      this.totalActiondonation,
      this.organizerName,
      this.video,
      this.organizerPhotoUrl});

  @override
  State<DetailFundaraising> createState() => _DetailFundaraisingState();
}

class _DetailFundaraisingState extends State<DetailFundaraising> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Detail galang dana',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0XFFEEF4FF),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isBookmarked
                      ? Icons.bookmark_outlined
                      : Icons.bookmark_border_outlined,
                  color: const Color(0XFF444CE7),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(widget.image!),
                const SizedBox(height: 8),
                Text(
                  widget.title!,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.totalAmountCollection!,
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
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 30,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFEEF4FF),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(64.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            widget.categoryName!,
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 155,
                        height: 30,
                        child: TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(64.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xFF444CE7),
                            size: 15,
                          ),
                          label: Text(
                            widget.location!,
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 130,
                        height: 30,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(64.0),
                                  side: const BorderSide(
                                    color: Color(0xFF444CE7),
                                  )),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            '1 Aksi = Rp${widget.totalActiondonation}',
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
                ),
                const SizedBox(height: 32),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe0eaff)),
                    borderRadius: BorderRadius.circular(58),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(12),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(widget.organizerPhotoUrl!),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Organizer',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  widget.organizerName!,
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: const Color(0xFF444CE7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 120,
                          height: 44,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF444CE7),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  side: BorderSide.none,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Ikuti',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe0eaff)),
                    borderRadius: BorderRadius.circular(58),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              'assets/logo_notif.png',
                              width: 56,
                              height: 56,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 170,
                                  height: 54,
                                  child: Text(
                                    'Nyalakan notifikasi Anda untuk mendapatkan informasi terbaru dari tantangan ini.',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: const Color(0xFF444CE7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 100,
                          height: 44,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFEEF4FF),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  side: BorderSide.none,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Aktifkan',
                              style: GoogleFonts.inter(
                                color: const Color(0xFF444CE7),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                Text(
                  'Promotion videos',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 32),
                Image.asset('assets/video.png'),
                const SizedBox(height: 16),
                ReadMoreText(
                  widget.description!,
                  trimLines: 4,
                  colorClickableText: const Color(0xFF444CE7),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'read more',
                  trimExpandedText: 'show less',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
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
                    builder: (context) => const SelectPaymentScreen(),
                  ),
                );
              },
              child: Text(
                'Donasi sekarang',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
