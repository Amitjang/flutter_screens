import 'package:flutter/material.dart';
import 'package:screen_1/core/themes/app_theme.dart';
import 'package:screen_1/presentation/screens/claim_submission/claim_submission_screen.dart';

import '../../presentation/screens/documnet_description/documnet_discription.dart';




class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appLightTheme(context),
      debugShowCheckedModeBanner: false,
      home:  ClaimSubmissionScreen(),
    );
  }
}
