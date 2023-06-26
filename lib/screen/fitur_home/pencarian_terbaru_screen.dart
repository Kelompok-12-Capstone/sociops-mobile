import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PencarianTerbaru extends StatelessWidget {
  const PencarianTerbaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Pencarian terbaru',
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hal-hal yang Anda cari di bilah pencarian utama akan muncul di sini',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: ListView(children: [
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'SkilledUp Life',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Komunitas berbagi - Mengikuti',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/foto profil.png')),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                      onTap: () {},
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
