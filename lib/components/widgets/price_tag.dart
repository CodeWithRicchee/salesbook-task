import 'package:flutter/material.dart';
import 'package:salesbook_task/components/styles.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({
    Key? key,
    required this.amount,
    required this.clr,
    required this.text,
  }) : super(key: key);
  final String amount;
  final Color? clr;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          amount,
          style: titleStyle.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: clr, borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(width: 3),
            Text(
              text!,
              style: subtitleStyle,
            )
          ],
        )
      ],
    );
  }
}
