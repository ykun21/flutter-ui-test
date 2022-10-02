import 'package:flutter/material.dart';

class BowlerDataRow extends StatelessWidget {
  final String label;
  final String overs;
  final String wicketsAndRuns;
  final String economy;
  final Color? bgColor;
  const BowlerDataRow({
    Key? key,
    required this.label,
    this.bgColor = const Color(0xff2F1E79),
    required this.overs,
    required this.wicketsAndRuns,
    required this.economy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        children: [
          Expanded(flex: 5, child: Text(label)),
          Expanded(child: Text(wicketsAndRuns)),
          Expanded(child: Text(overs)),
          Expanded(child: Text(economy)),
        ],
      ),
    );
  }
}
