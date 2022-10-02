import 'package:flutter/material.dart';
import 'package:flutter_ui_test/models/live_match.dart';
import 'package:flutter_ui_test/screens/detail/components/batter.dart';
import 'package:flutter_ui_test/screens/detail/components/match_card.dart';
import 'package:flutter_ui_test/widgets/home_widget.dart';

import 'components/bowler.dart';
import 'components/overs.dart';
import 'components/who_will_win.dart';

class MatchDetailsPage extends StatelessWidget {
  final LiveMatch data;
  const MatchDetailsPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeWidget(SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MatchCard(data: data),
          const Overs(),
          const BatterTable(),
          const BowlerTable(),
          const WhoWillWin()
        ],
      ),
    ));
  }
}
