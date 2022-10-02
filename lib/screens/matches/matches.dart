import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_test/widgets/home_widget.dart';
import 'package:flutter_ui_test/widgets/live_match_card.dart';

import '../../models/live_match.dart';

class LiveMatchPage extends StatefulWidget {
  const LiveMatchPage({Key? key}) : super(key: key);

  @override
  State<LiveMatchPage> createState() => _LiveMatchPageState();
}

class _LiveMatchPageState extends State<LiveMatchPage> {
  Map<String, List<LiveMatch>>? groupedData;

  @override
  void initState() {
    setState(
        () => groupedData = groupBy(liveMatches, (LiveMatch obj) => obj.time!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return groupedData == null
        ? const Center(child: CircularProgressIndicator())
        : HomeWidget(
            ListView.builder(
              itemCount: groupedData!.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Text(groupedData!.keys.elementAt(index),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    ListView.builder(
                      itemCount:
                          groupedData![groupedData!.keys.elementAt(1)]!.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        LiveMatch data = groupedData![
                            groupedData!.keys.elementAt(1)]![index];
                        return LiveMatchCard(data: data);
                      },
                    ),
                  ],
                );
              },
            ),
          );
  }
}
