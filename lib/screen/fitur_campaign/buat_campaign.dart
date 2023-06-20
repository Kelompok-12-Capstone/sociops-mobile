import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'create_campaign/Buat_Donasi.dart';
import 'create_volunteer/Buat_volunteer.dart';

class BuatCampaignScreen extends StatefulWidget {
  const BuatCampaignScreen({Key? key}) : super(key: key);

  @override
  State<BuatCampaignScreen> createState() => _BuatCampaignScreenState();
}

class _BuatCampaignScreenState extends State<BuatCampaignScreen> {
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Campaign",
            style: FontFamily()
                .mediumteks
                .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: const BackButton(
            color: Color(0XFF444CE7),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      child: Image.asset('assets/heart.png'),
                    ),
                    Text(
                      'Buat Campaign',
                      style: FontFamily().mediumteks.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      height: 78,
                      width: 386,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: ColorStyle().disablebutton),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => (const BuatDonasiScreen()),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/galang dana.png'),
                            const Text("Buat Penggalangan Dana"),
                            const Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 78,
                      width: 386,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: ColorStyle().disablebutton),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  (const BuatVolunteerScreen()),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/volunteerr.png'),
                            const Text("Buat Volunter"),
                            const Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
