import 'package:flutter/material.dart';
import 'package:screen_1/core/constants/font_weight.dart';

import 'package:screen_1/presentation/screens/claim_submission/widgets/list_view_widget.dart';
import 'package:screen_1/presentation/screens/claim_submission/widgets/patient_details.dart';
import 'package:screen_1/presentation/screens/claim_submission/widgets/submission_details.dart';
import 'package:screen_1/presentation/widgets/custom_alertdialog.dart';
import 'package:screen_1/presentation/widgets/custom_app_bar.dart';

import '../../../core/colors/app_colors.dart';
import '../../widgets/custom_button.dart';

class ClaimSubmissionScreen extends StatefulWidget {
  const ClaimSubmissionScreen({Key? key}) : super(key: key);

  @override
  State<ClaimSubmissionScreen> createState() => _ClaimSubmissionScreenState();
}

class _ClaimSubmissionScreenState extends State<ClaimSubmissionScreen> {
  late bool onTabValue = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      backgroundColor: white0xFFE5E5E5,
      appBar: const CustomAppBar(
        title: 'Claim Submission',
        leadingIconData: Icons.chevron_left_outlined,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: white0xFFE5E5E5,
            child: Column(
              children:  [
                const SizedBox(
                  height: 10,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Review Information",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: medium,
                          color: blue0xFF1B2C41),
                    )),
                const SizedBox(
                  height: 20,
                ),
                  onTabValue? const ListViewWidget():const PatientDetails(),
                // ListViewWidget(),
                const SizedBox(
                  height: 40,
                ),
               onTabValue? const SubmissionDetails():
                const Align(
                   alignment: Alignment.centerLeft,
                    child: Text("Required*",style: TextStyle(color: red0xFFE22121),))
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        InkWell(
          onTap: () {
            setState(() {
              onTabValue = false;
            });
          },
          child: CustomButton(
            text: "Cancel",
            textColor: onTabValue ? grey0xFFA2A8B4 : white0xFFFFFFFF,
            bgColor: onTabValue ? white0xFFE5E5E5 : blue0xFF5476B2,
          ),
        ),
        InkWell(
          child: CustomButton(
            text: "Next",
            textColor: onTabValue ? white0xFFFFFFFF : grey0xFFA2A8B4,
            bgColor: onTabValue ? blue0xFF5476B2 : white0xFFE5E5E5,
          ),
          onTap: () {
            setState(() {
              onTabValue = true;
            });
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                });
          },
        )
      ],
    ));
  }

  Widget alert = const CustomAlertDialog(
    text:
        "Claim submitted.Your claim will be reviewed and a decision will be made",
    textColor: black0xFF000000,
    textfontSize: 14.0,
    textfontweight: medium,
    buttontext: "Home Page",
    buttonbgcolor: blue0xFF5476B2,
    buttontextcolor: white0xFFFFFFFF,
    buttontextsize: 12.0,
  );
}
