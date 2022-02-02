import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:salesbook_task/components/styles.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(sampleData1);
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 8,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(
          showTitles: true,
          reservedSize: 55,
          margin: -25,
          interval: 1,
          getTextStyles: (context, value) => subtitleStyle,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return "-\$4,000";
              case 3:
                return '\$0';

              case 8:
                return '\$20,000';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
        lineChartBarData1_3,
      ];

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 0,
        margin: 10,
        interval: 1,
        getTextStyles: (context, value) => subtitleStyle,
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return 'Jan 1 2022';

            case 12:
              return 'Feb 1 2022';
          }
          return '';
        },
      );

  FlGridData get gridData => FlGridData(show: true);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 2,
          ),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [Line3],
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 5),
          FlSpot(3, 3),
          FlSpot(5, 5),
          FlSpot(7, 3.4),
          FlSpot(10, 8),
          FlSpot(12, 6),
          FlSpot(13, 7),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        colors: [Line2],
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false, colors: [
          const Color(0x00aa4cfc),
        ]),
        spots: const [
          FlSpot(1, 2),
          FlSpot(3, 5),
          FlSpot(7, 1.2),
          FlSpot(10, 5.8),
          FlSpot(12, 3.6),
          FlSpot(13, 1.9),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        colors: [Line1],
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 6.8),
          FlSpot(3, 5.3),
          FlSpot(6, 7),
          FlSpot(10, 2.3),
          FlSpot(13, 5.5),
        ],
      );
}
