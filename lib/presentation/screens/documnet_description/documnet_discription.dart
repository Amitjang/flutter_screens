import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_1/presentation/screens/documnet_description/widgets/document_list.dart';
import 'package:screen_1/presentation/screens/documnet_description/widgets/upload_document.dart';
import 'package:screen_1/presentation/screens/documnet_description/widgets/upload_perscription.dart';

import '../../../core/colors/app_colors.dart';
import '../../widgets/custom_app_bar.dart';

class DocumentDiscription extends StatelessWidget {
  DocumentDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: white0xFFE5E5E5,
        appBar: const CustomAppBar(
          title: 'Claim Submission',
          leadingIconData: Icons.chevron_left,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.90,
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Required Documents",
                      style: TextStyle(
                          color: blue0xFF1B2C41,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DocumentList(),
                  SizedBox(
                    height: 30,
                  ),
                  UploadPrescription(),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Uploaded documents")),
                  SizedBox(
                    height: 10,
                  ),
                  UploadDocumnet()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
