import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/widget/expandable_widget.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'FAQ',
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(),
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             TextButton(
              //               onPressed: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => const FAQScreen()),
              //                 );
              //               },
              //               child: Text(
              //                 'Apa itu Sociops?',
              //                 style: GoogleFonts.inter(
              //                   fontWeight: FontWeight.w500,
              //                   fontSize: 16,
              //                   color: Colors.black,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         IconButton(
              //           onPressed: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => const FAQScreen()),
              //             );
              //           },
              //           icon: const Icon(Icons.arrow_drop_down),
              //           color: const Color(0XFF444CE7),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(height: 16),
              ExpandableWidget(),
              ExpandableWidget(),
              ExpandableWidget(),
              ExpandableWidget(),
              ExpandableWidget(),
              ExpandableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
