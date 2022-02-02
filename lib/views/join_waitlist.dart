import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salesbook_task/components/styles.dart';
import 'package:salesbook_task/components/widgets/button.dart';

class JoinWaitList extends StatefulWidget {
  const JoinWaitList({Key? key}) : super(key: key);

  @override
  _JoinWaitListState createState() => _JoinWaitListState();
}

double _value = 52000;
double _value2 = 1000;
int? selectedAmount = 52000;
int? repayEachWeek = 1640;

class _JoinWaitListState extends State<JoinWaitList> {
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
          "Nuula Line of Credit",
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
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              "Drag to increse or decrease the \n amount you are using",
              style: subtitleStyle.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Text(
              "\$ $selectedAmount",
              style: titleStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 15),
            Slider(
              divisions: 200,
              min: 0.0,
              max: 100000.0,
              activeColor: Colors.purple,
              inactiveColor: Colors.purple.shade100,
              thumbColor: Colors.pink,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                  selectedAmount = _value.toInt();
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ 0",
                    style: subtitleStyle,
                  ),
                  Text(
                    "\$ 100,000",
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "How much do you want to repay \n each week?",
              style: subtitleStyle.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              "\$ $repayEachWeek",
              style: titleStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 15),
            Slider(
              min: 0.0,
              max: 2000.0,
              activeColor: Colors.purple,
              inactiveColor: Colors.purple.shade100,
              thumbColor: Colors.pink,
              value: _value2,
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                  repayEachWeek = value.toInt() + 1000;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ 1,000",
                    style: subtitleStyle,
                  ),
                  Text(
                    "\$ 3,000",
                    style: subtitleStyle,
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                      size: size,
                      buttonName: "Withdrawal",
                      price: "23,500",
                      icon: Icons.dialpad,
                      iconclr: Colors.blue,
                    ),
                    ButtonWidget(
                      size: size,
                      buttonName: "Number of payments",
                      price: "36",
                      icon: Icons.arrow_drop_up,
                      iconclr: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                      size: size,
                      buttonName: "Weekly Payment",
                      price: "\$1,640",
                      icon: Icons.dialpad,
                      iconclr: Colors.blue,
                    ),
                    ButtonWidget(
                      size: size,
                      buttonName: "Total repayment",
                      price: "\$59,003",
                      icon: Icons.arrow_drop_up,
                      iconclr: Colors.purple,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Next",
                    style: titleStyle.copyWith(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                const SizedBox(height: 10),
                Text(
                  "You can review your changes in the next step",
                  style: subtitleStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
