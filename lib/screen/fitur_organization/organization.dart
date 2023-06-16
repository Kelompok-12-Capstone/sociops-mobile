import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/screen/fitur_organization/search_box.dart';
import 'package:sociops/screen/fitur_organization/profile.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Organizer',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchBox(),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hasil Pencarian',
                    style: Styles.resultTextStyle,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        '39 ditemukan',
                        style: Styles.Result2,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomFollowButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatefulWidget {
  @override
  _CustomFollowButtonState createState() => _CustomFollowButtonState();
}

class _CustomFollowButtonState extends State<CustomFollowButton> {
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.Kotak,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://media.glassdoor.com/lst2x/b9/c5/c8/b3/hyundai-motor-india-engineering-r-and-d-centre.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: AppColors.arrowColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Hyundai',
                    style: Styles.Result2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              child: Text(
                'PT Hyundai adalah anak perusahaan penjualan dan distributor resmi Hyundai Motor Company yang merupakan produsen otomotif di Indonesia.',
                style: Styles.resultTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 16, right: 8),
                    decoration: BoxDecoration(
                      color: AppColors.Button,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Kunjungi Profil',
                          style: TextStyle(
                            color: AppColors.arrowColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: toggleFollow,
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 16, left: 8),
                    decoration: BoxDecoration(
                      color: isFollowing ? AppColors.Button : AppColors.arrowColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          isFollowing ? 'Mengikuti' : 'Ikuti',
                          style: TextStyle(
                            color: isFollowing ? Colors.white : AppColors.Button,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}