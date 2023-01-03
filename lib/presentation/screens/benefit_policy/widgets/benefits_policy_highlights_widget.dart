import 'package:flutter/material.dart';
import 'package:screen_1/core/colors/app_colors.dart';
import 'package:screen_1/core/constants/font_weight.dart';

import '../../../../data/models/benefit_policy/benefits_highlight_model.dart';

class BenefitsPolicyHighlightsWidget extends StatefulWidget {
  const BenefitsPolicyHighlightsWidget({Key? key}) : super(key: key);

  @override
  State<BenefitsPolicyHighlightsWidget> createState() => _BenefitsPolicyHighlightsWidgetState();
}

class _BenefitsPolicyHighlightsWidgetState extends State<BenefitsPolicyHighlightsWidget> {

  final items = [
    BenefitsHighlightModel(service: "Radiology",limit: "1000.00 LYD"),
    BenefitsHighlightModel(limit: "1000.00 LYD", service:"Chronic Conditions" ),
    BenefitsHighlightModel(limit:"1000.00 LYD" , service: "Pre existing cases"),
    BenefitsHighlightModel(limit: "1000.00 LYD", service:  "Emergency room services"),
    BenefitsHighlightModel(limit: "1000.00 LYD", service: "Transportation"),
    BenefitsHighlightModel(limit: "1000.00 LYD", service: "Room and Board"),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _tab("In-Patient", true),
              _tab("Out-Patient", false),
            ],
          ),
        )),
        const SizedBox(height: 5),
        _aggregateLimit(),
        const SizedBox(height: 5),
        _tabBarViewItem()
      ],
    );
  }

  Widget _tab(String title, bool isSelected) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: isSelected
            ? const BoxDecoration(
                color: blue0xFF32B9BD,
                borderRadius: BorderRadius.all(Radius.circular(5)))
            : null,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: isSelected ? white0xFFFFFFFF : grey0xFFA2A8B4,
            fontWeight: isSelected?regular:medium,
            fontSize: 12),
          ),
        ),
      ),
    );
  }

  Widget _aggregateLimit() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Text("Aggregate Limit",maxLines: 1,style: TextStyle(
              fontWeight: regular,
              fontSize: 13,
              color: black0xFF000000
            ),),
            Spacer(),
            Text("1000LYD per member",maxLines: 1,style: TextStyle(
                fontWeight: medium,
                fontSize: 13,
                color: blue0xFF5476B2
            ),),
          ],
        ),
      ),
    );
  }

  Widget _tabBarViewItem() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: Center(child: Text("Service",maxLines: 1,style: TextStyle(
                    fontWeight: bold,
                    fontSize: 12,
                    color: blue0xFF5476B2
                )))),
                Expanded(child: Center(child: Text("Limit",maxLines: 1,style: TextStyle(
                    fontWeight: bold,
                    fontSize: 12,
                    color: blue0xFF5476B2
                )))),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: grey0xFFA2A8B4,
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return _listItem(items[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 4,
                    thickness: 4,
                    color: Colors.transparent,
                  );
                },
                itemCount: items.length)
          ],
        ),
      ),
    );
  }

  Widget _listItem(BenefitsHighlightModel benefitsHighlightModel){
    return Row(
      children:  [
        Expanded(child: Center(child: Text(benefitsHighlightModel.service,maxLines: 1,style: const TextStyle(
            fontWeight: regular,
            fontSize: 12,
            color: black0xFF000000
        )))),
        Expanded(child: Center(child: Text(benefitsHighlightModel.limit,maxLines: 1,style: const TextStyle(
            fontWeight: regular,
            fontSize: 12,
            color: black0xFF000000
        ))))
      ],
    );
  }
}
