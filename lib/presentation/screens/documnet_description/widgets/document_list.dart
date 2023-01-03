import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(

          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child:Text("Please upload the following documents",style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),)
          ),
        ),
       Padding(
         padding: const EdgeInsets.only(top:2,left: 10),
         child: Align(
           alignment: Alignment.centerLeft,
             child:  Text("•Claim details",style: GoogleFonts.poppins(
                 fontSize: 12,
                 fontWeight: FontWeight.w500
             ),)),
       ),
        Padding(
          padding: const EdgeInsets.only(top:2,left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
              child:  Text("•Invoice",style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
              ),)),
        )
      ],
    );
  }
}
