import 'package:flutter/material.dart';
import 'package:flutter_ui_test/models/player_score.dart';
import 'package:flutter_ui_test/widgets/batter_data_row.dart';

class BatterTable extends StatelessWidget {
  const BatterTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BatterDataRow(
              label: "Batter",
              runAndBall: "R(B)",
              fours: "4s",
              sixes: "6s",
              runRate: "SR"),
          ListView.builder(
            itemCount: batterScoreData.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return BatterDataRow(
                  bgColor: index.isOdd
                      ? const Color(0xff2F1E79)
                      : const Color(0xff331F89),
                  label: batterScoreData[index].name!,
                  runAndBall:
                      "${batterScoreData[index].runs}(${batterScoreData[index].balls})",
                  fours: batterScoreData[index].fours.toString(),
                  sixes: batterScoreData[index].sixes!.toString(),
                  runRate: batterScoreData[index].runRate!.toString());
            },
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            color: const Color(0xff331F89),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("P’ship:27(19)",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall),
                Text("last wkt:Obed McCoy",
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
