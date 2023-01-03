import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';




class HeaderWidgtes extends StatelessWidget {
  const HeaderWidgtes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10, bottom: 5, left: 20, right: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: const BoxDecoration(
                  color:Colors.white, shape: BoxShape.circle),
              height: 44,
              width: 44,
              child: Container(
                decoration: const BoxDecoration(
                    color:blue0xFF5476B2, shape: BoxShape.circle),
                height: 40,
                width: 40,
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(child: Divider(color: grey0xFFA2A8B4,thickness: 1.4,)),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: const BoxDecoration(
                  color:grey0xFFF2F5FA, shape: BoxShape.circle),
              height: 44,
              width: 44,
              child: const Center(
                child: Text("2", style: TextStyle(color:grey0xFFA2A8B4)),
              ),
            ),
          ),
          const  Expanded(child: Divider(color: grey0xFFA2A8B4,thickness: 1.4,)),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: grey0xFFF2F5FA, shape: BoxShape.circle),
              height: 44,
              width: 44,
              child: const Center(
                child: Text("3", style: TextStyle(color:grey0xFFA2A8B4)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
