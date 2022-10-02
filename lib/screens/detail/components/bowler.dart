import 'package:flutter/material.dart';
import 'package:flutter_ui_test/models/player_score.dart';
import 'package:flutter_ui_test/widgets/bowler_data_row.dart';

class BowlerTable extends StatelessWidget {
  const BowlerTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BowlerDataRow(
            label: "Bowler",
            wicketsAndRuns: "W-R",
            overs: "Overs",
            economy: "Econ",
          ),
          ListView.builder(
            itemCount: bowlerScoreData.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return BowlerDataRow(
                bgColor: index.isOdd
                    ? const Color(0xff2F1E79)
                    : const Color(0xff331F89),
                label: bowlerScoreData[index].name!,
                wicketsAndRuns:
                    "${bowlerScoreData[index].wickets}-${bowlerScoreData[index].runs}",
                overs: bowlerScoreData[index].overs.toString(),
                economy: bowlerScoreData[index].economy!.toString(),
              );
            },
          ),
        ],
      ),
    );
  }
}
