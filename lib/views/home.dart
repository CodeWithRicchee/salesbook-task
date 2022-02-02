import 'package:flutter/material.dart';
import 'package:salesbook_task/components/styles.dart';
import 'package:salesbook_task/components/widgets/line_chart.dart';
import 'package:salesbook_task/components/widgets/price_tag.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:salesbook_task/main.dart';
import 'package:salesbook_task/views/cash_flow_health.dart';
import 'package:salesbook_task/views/join_waitlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                width: size.width * 0.92,
                height: size.height * 0.35,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: shadows),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Nuula Line of Credit",
                      style: titleStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Business lines of credit for 1\$/day",
                      style: subtitleStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        PriceTag(
                          amount: "\$11,000",
                          clr: Colors.purple,
                          text: "In use",
                        ),
                        PriceTag(
                          amount: "\$24,000",
                          clr: Colors.grey,
                          text: "Available",
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 25),
                      child: LinearPercentIndicator(
                        width: size.width * 0.75,
                        lineHeight: 12.0,
                        percent: 0.4,
                        animation: true,
                        animationDuration: 2500,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.purple,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JoinWaitList()),
                        );
                      },
                      child: Text(
                        "Join Waitlist",
                        style: titleStyle.copyWith(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          fixedSize: const Size(300, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Learn more about the Line of credit",
                      style: subtitleStyle.copyWith(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              height: size.height * 0.55,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(
                        height: 37,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CashFlowHealth()),
                          );
                        },
                        child: Text(
                          'Cash flow Health',
                          style: titleStyle.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '1 issue to resolve',
                        style: subtitleStyle.copyWith(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3 Accounts",
                                  style: subtitleStyle.copyWith(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Text(
                                  "USD",
                                  style: subtitleStyle,
                                )
                              ],
                            ),
                            PriceTag(
                                amount: "\$20,590",
                                clr: Colors.transparent,
                                text: "")
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 16.0, left: 6.0),
                          child: LineChartWidget(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
