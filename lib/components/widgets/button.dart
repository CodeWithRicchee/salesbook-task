import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salesbook_task/components/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.size,
    required this.buttonName,
    required this.price,
    required this.icon,
    required this.iconclr,
  }) : super(key: key);
  final String buttonName;
  final String price;
  final IconData icon;
  final Color iconclr;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.40,
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: CupertinoColors.systemGrey5,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            buttonName,
            style: subtitleStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$price",
                style: titleStyle.copyWith(fontSize: 20),
              ),
              Icon(
                icon,
                color: iconclr,
              )
            ],
          )
        ],
      ),
    );
  }
}
