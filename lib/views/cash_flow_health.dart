import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salesbook_task/components/styles.dart';
import 'package:salesbook_task/components/widgets/line_chart.dart';
import 'package:salesbook_task/components/widgets/list_tile.dart';
import 'package:salesbook_task/components/widgets/price_tag.dart';

class CashFlowHealth extends StatefulWidget {
  const CashFlowHealth({Key? key}) : super(key: key);

  @override
  State<CashFlowHealth> createState() => _CashFlowHealthState();
}

class _CashFlowHealthState extends State<CashFlowHealth> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black45,
        elevation: 0,
        title: Text(
          "Cash flow Health",
          style: titleStyle.copyWith(fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.black45,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        children: [
          Text(
            "1 issue to resolve",
            style: subtitleStyle.copyWith(color: Colors.red),
          ),
          const SizedBox(height: 5),
          const PriceTag(amount: "\$20,590", clr: Colors.transparent, text: ""),
          Text("Combined account balance", style: subtitleStyle),
          const SizedBox(height: 8),
          SizedBox(height: size.height * 0.30, child: const LineChartWidget()),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: CupertinoColors.systemGrey5,
              thumbColor: CupertinoColors.activeGreen,
              padding: const EdgeInsets.all(8),
              groupValue: groupValue,
              children: {
                0: buildSegment(45),
                1: buildSegment(60),
                2: buildSegment(90),
              },
              onValueChanged: (value) {
                setState(() {
                  groupValue = value;
                  // print(value);
                });
              },
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                ListTile2("\$10,000", "3477", "\$7,000", true, Line1),
                ListTile2("\$9,000", "3487", "\$0", true, Line2),
                ListTile2("\$1,590", "7514", "\$7,000", true, Line3),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSegment(int days) {
    return Text(
      "$days days",
      style: titleStyle,
    );
  }
}
