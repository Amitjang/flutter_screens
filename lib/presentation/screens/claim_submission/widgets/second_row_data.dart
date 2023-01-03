import "package:flutter/material.dart";

class SecondRow extends StatelessWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.only(left: 12.5, right: 12.5, bottom: 5),
      child: Row(
        children: const [
          Text("Claim Details",
              style: TextStyle(color: Color(0xFF5476B2), fontSize: 12)),
          Expanded(
              child: Divider(
                color: Colors.transparent,
              )),
          Text("Documents",
              style: TextStyle(color: Color(0xFF5476B2), fontSize: 12)),
          Expanded(
              child: Divider(
                color: Colors.transparent,
              )),
          Text("Confirmation",
              style: TextStyle(color: Color(0xFF5476B2), fontSize: 12)),
        ],
      ),
    );
  }
}
