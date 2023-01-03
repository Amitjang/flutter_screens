import 'package:flutter/material.dart';
import 'package:screen_1/core/colors/app_colors.dart';
import 'package:screen_1/core/constants/font_weight.dart';

class BenefitsPolicyInsurenceDetailsWidget extends StatelessWidget {
  const BenefitsPolicyInsurenceDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            _columnItemWidget("Insurance Type", "Employee"),
            const SizedBox(
              height: 8,
            ),
            _columnItemWidget("Insurance Issuer", "Al-naseem company"),
            const SizedBox(
              height: 8,
            ),
            _columnItemWidget("Balance Reset Date", "01/October"),
            const SizedBox(
              height: 8,
            ),
            _columnItemWidget("Policy Expiration Date", "05/Oct/2024"),
          ],
        ),
      ),
    );
  }

  Widget _columnItemWidget(String key, String value) {
    return Row(
      children: [
        Expanded(
            child: Text(
          key,
          style: const TextStyle(
              fontSize: 12, color: black0xFF000000, fontWeight: regular),
        )),
        Text(
          value,
          style: const TextStyle(
              fontSize: 12, color: blue0xFF5476B2, fontWeight: medium),
        )
      ],
    );
  }
}
