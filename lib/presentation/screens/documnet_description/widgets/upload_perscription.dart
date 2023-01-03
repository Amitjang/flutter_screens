import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/app_colors.dart';

class UploadPrescription extends StatelessWidget {
  const UploadPrescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Upload a prescription",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            _genrateFlexibleBox("Camera", blue0xFF32B9BD, false),
            _genrateFlexibleBox("Gallery", blue0xFF5476B2, true)
          ],
        )
      ],
    );
  }

  Widget _genrateFlexibleBox(text, bgColor, bool isRight) {
    return Flexible(
        child: Container(
      padding: const EdgeInsets.all(10),
      height: 52,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: isRight
              ? (const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8)))
              : (const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8)))),
      child: Center(
          child: Text(text,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400))),
    ));
  }
}
