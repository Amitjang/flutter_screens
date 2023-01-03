import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import 'submission_details.dart';
import 'list_view_widget.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white0xFFE5E5E5,
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),

          ListViewWidget(),
          SizedBox(height: 30,),
          SubmissionDetails(),
          // const Padding(
          //   padding: EdgeInsets.only(left: 37,top: 0),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //       child: Text("Required*",style: TextStyle(color: red0xFFE22121),)),
          // )
        ],
      ),
    );
  }
}
