import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../core/constants/font_weight.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.95,
      child: Column(
        children: [
          _genratecard(context, "Patient*", "Select"),
          _genratecard(context, "Medical center*", "Select"),
          _genratecard(context, "Service type*", "Select"),
          _genratecard(context, "Claim amount*", "Select"),
          _genratecard(context, "Service date*", "Select"),
          _genratecard(context, "Notes", "Select")
        ],
      ),
    );
  }

  Widget _genratecard(BuildContext context, String key, String value) {
    return Card(
      elevation: 3,
      color: grey0xFFF2F5FA,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
        child: Row(
          children: [
            Expanded(
              child: Text(key,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: regular,
                      color: black0xFF000000)),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 12, fontWeight: regular, color: blue0xFF5476B2),
            ),
            const Icon(
              Icons.chevron_right,
              color: grey0xFFA2A8B4,
            ),
          ],
        ),
      ),
    );
  }
}
