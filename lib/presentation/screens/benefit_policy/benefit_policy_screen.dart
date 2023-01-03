import 'package:flutter/material.dart';
import 'package:screen_1/presentation/screens/benefit_policy/widgets/benefit_policy_primary_beneficiary_detail_widget.dart';
import 'package:screen_1/presentation/screens/benefit_policy/widgets/benefits_policy_highlights_widget.dart';
import 'package:screen_1/presentation/screens/benefit_policy/widgets/benefits_policy_insurence_details_widget.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/font_weight.dart';
import '../../widgets/custom_app_bar.dart';

class BenefitPolicyScreen extends StatelessWidget {
  const BenefitPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Benefit Policy",
          leadingIconData: Icons.chevron_left,
          leadingOnTab: () {},
        ),
        body: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  _titleWidget("Primary Beneficiary"),
                  const SizedBox(
                    height: 5,
                  ),
                  const BenefitPolicyPrimaryBeneficiaryDetailWidget(),
                  const SizedBox(
                    height: 8,
                  ),
                  _titleWidget("Insurance Details"),
                  const SizedBox(
                    height: 5,
                  ),
                  const BenefitsPolicyInsurenceDetailsWidget(),
                  const SizedBox(
                    height: 8,
                  ),
                  _titleWidget("Benefits Highlights"),
                  const SizedBox(
                    height: 5,
                  ),
                  const BenefitsPolicyHighlightsWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleWidget(String title) {
    return Text(title,
        style: const TextStyle(
          color: blue0xFF1B2C41,
          fontWeight: medium,
          fontSize: 15,
        ));
  }
}
