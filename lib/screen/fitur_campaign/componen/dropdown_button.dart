import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 52,
        width: 396,
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: ColorStyle().primaryblue,
                  width: 1.0,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
          ),
          child: DropdownButton<String>(
            items: <String>[
              ' Pendidikan',
              ' Lingkungan',
              ' Sosial',
              ' Anak Sakit',
              ' Keshatan',
              ' Infrastruktur',
              ' Seni',
              ' Bencana',
              ' Panti Asuhan',
              ' Disabilitas',
              ' Kemanusiaan',
              ' Lainnya',
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(selectedCategory.isEmpty
                ? '  Pilih Kategori'
                : selectedCategory),
            borderRadius: BorderRadius.circular(10),
            underline: const SizedBox(),
            isExpanded: true,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  selectedCategory = value;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
