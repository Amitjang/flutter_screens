import 'package:flutter/material.dart';
import 'package:screen_1/core/constants/assets_base_paths.dart';
import 'package:screen_1/core/constants/font_weight.dart';

import '../../../../core/colors/app_colors.dart';

class BenefitPolicyPrimaryBeneficiaryDetailWidget extends StatelessWidget {
  const BenefitPolicyPrimaryBeneficiaryDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Image.asset("$pngAssetsBasePath/dummy_user.png", height: 50, width: 50,),
        title: const Text(
          "Mohammed Mustafa Shani",
          maxLines: 1,
          style: TextStyle(
              fontSize: 14, color: blue0xFF1B2C41, fontWeight: regular),
        ),
        subtitle: const Text(
          "Oct 12, 1984 (38)",
          maxLines: 1,
          style: TextStyle(
              fontSize: 12, color: grey0xFFA2A8B4, fontWeight: regular),
        ),
      ),
    );
  }
}
