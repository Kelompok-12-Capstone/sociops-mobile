import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/data/list_data.dart';
import 'package:sociops/widget/widget_color_choose.dart';

class BottomShet {
  int indexcat = 0;

  Future bottomsheet() {
    return Get.bottomSheet(Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Choose Filter',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Provinsi',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 22,
                  horizontal: 26,
                ),
                child: TextButton(
                  style: WidgetColorchoose()
                      .btnCategoryStyle(index == indexcat ? true : false),
                  onPressed: () {
                    indexcat =
                        DataList().category.indexOf(DataList().provinsi[index]);
                  },
                  child: Text(DataList().provinsi[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
