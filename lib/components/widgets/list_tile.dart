import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salesbook_task/components/styles.dart';

Container ListTile2(String price, String accNo, String safeLimit,
    bool isSelected, Color switchColor) {
  return Container(
    margin: const EdgeInsets.only(top: 8, right: 15, left: 15),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: CupertinoColors.white,
        boxShadow: lightShadows,
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.donut_small_sharp,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                Text(
                  price,
                  style: titleStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Checking USD **$accNo",
              style: subtitleStyle,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Switch(
              value: isSelected,
              activeColor: switchColor,
              activeTrackColor: switchColor.withOpacity(0.5),
              inactiveThumbColor: switchColor.withOpacity(0.8),
              // inactiveTrackColor: Colors.orange,
              onChanged: (value) {
                isSelected = value;
              },
            ),
            Text(
              "Safe limit $safeLimit",
              style: subtitleStyle,
            )
          ],
        ),
      ],
    ),
  );
}
