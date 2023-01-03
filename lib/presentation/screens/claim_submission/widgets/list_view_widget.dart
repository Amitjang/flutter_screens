import 'package:flutter/material.dart';
import 'package:screen_1/core/colors/app_colors.dart';
import 'package:screen_1/core/constants/font_weight.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.95,
      child: Column(
        children: [
          _genratecard(context, "Patient*", "Manal Salem Mohammed"),
          _genratecard(context, "Medical center*", "Al-Safwa hospital"),
          _genratecard(context, "Service type*", "Stay in hospital"),
          _genratecard(context, "Claim amount*", "222.00 LYD"),
          _genratecard(context, "Service date*", "Apr. 23, 2013"),
          Card(
            elevation: 3,
            child: Column(
              children: [
                Container(
                  color: grey0xFFF2F5FA,
                  padding: const EdgeInsets.all(5.0),
                  child: const Align(
                      alignment: Alignment.centerLeft, child: Text("Note*")),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate",
                      style: TextStyle(fontSize: 11, color: blue0xFF5476B2),
                    ),
                  ),
                )
              ],
            ),
          ),
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
            )
          ],
        ),
      ),
    );
  }
}
