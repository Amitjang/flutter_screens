import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../core/constants/assets_base_paths.dart';


class SubmissionDetails extends StatelessWidget {
  const SubmissionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Uploaded documents",
              style: GoogleFonts.poppins(
                  fontSize:12,
                  color: blue0xFF1B2C41
              ),
            ),

            SvgPicture.asset("$svgAssetsBasePath/Vector(1).svg")
          ],
        ),
        Align(alignment: Alignment.centerLeft,child: Text("•sfadsf.jpg",style:GoogleFonts.poppins(
            fontSize: 12,
            color: blue0xFF1B2C41
        ),)),
        Align(alignment: Alignment.centerLeft,child: Text("•asdfdasfasf.pdf",style:GoogleFonts.poppins(
            fontSize: 12,
            color: blue0xFF1B2C41
        ),)),
        Align(alignment: Alignment.centerLeft,child: Text("•asdfdasfasf.pdf",style:GoogleFonts.poppins(
            fontSize: 12,
            color: blue0xFF1B2C41
        ),)),
        Align(alignment: Alignment.centerLeft,child: Text("•asdfdasfasf.pdf",style:GoogleFonts.poppins(
            fontSize: 12,
            color: blue0xFF1B2C41
        ),))
      ],
    );
  }
}
