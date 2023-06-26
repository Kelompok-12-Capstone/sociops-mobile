import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Kebijakan dan privasi',
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jenis Data yang Kami Kumpulkan',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mattis mauris. Maecenas consequat purus id mi maximus semper. Integer sed blandit tellus, in porttitor leo. Nam iaculis nulla vel quam elementum, non ultricies augue elementum. Aenean rutrum, urna id tempus egestas, libero ipsum interdum ex, at fermentum metus purus at turpis. Curabitur tristique faucibus risus in venenatis. Ut in placerat tortor, in malesuada velit. Duis turpis leo, porttitor vitae fringilla non, tempor ultrices ante. Aliquam auctor, metus in maximus egestas, tortor quam euismod lectus, id suscipit sem metus ut diam. Phasellus quis tempus tortor.',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Penggunaan Data Pribadi Anda',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis vitae ante imperdiet, lacinia nulla sit amet, hendrerit erat. In ac lectus vulputate, pellentesque est et, interdum augue. Nam in sodales augue, non pellentesque orci. Nullam aliquet ante ut dolor molestie venenatis. Aliquam a erat quis nulla congue porttitor sit amet id nulla. Fusce pretium diam quam, vel consequat nibh feugiat id. Aenean laoreet auctor sollicitudin. Donec at sagittis nulla, sit amet lacinia eros.',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
