import 'package:flutter/material.dart';

class BatterDataRow extends StatelessWidget {
  final String label;
  final String runAndBall;
  final String fours;
  final String sixes;
  final String runRate;
  final Color? bgColor;
  const BatterDataRow({
    Key? key,
    required this.label,
    required this.runAndBall,
    required this.fours,
    required this.sixes,
    required this.runRate,
    this.bgColor = const Color(0xff2F1E79),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        children: [
          Expanded(flex: 5, child: Text(label)),
          Expanded(child: Text(runAndBall)),
          Expanded(child: Text(fours)),
          Expanded(child: Text(sixes)),
          Expanded(child: Text(runRate)),
        ],
      ),
    );
  }
}
