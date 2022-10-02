import 'package:flutter/material.dart';

import '../../../models/live_match.dart';

class MatchCard extends StatelessWidget {
  final LiveMatch data;
  const MatchCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
          color: Color(0xff2D1A76),
          boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 15)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Text(data.title ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Live",
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          const Divider(color: Color(0xff7381FD), thickness: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(data.team2Icon!, height: 50),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.team2 ?? "India",
                        style: Theme.of(context).textTheme.bodySmall),
                    RichText(
                      text: TextSpan(
                        text: data.team2Score.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: const Color(0xffFFA800)),
                        children: <TextSpan>[
                          TextSpan(
                            text: "/${data.team2Wickets}",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: const Color(0xffFFA800)),
                          ),
                          TextSpan(
                            text: " (${data.team2Overs!.toStringAsFixed(2)})",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            color: const Color(0xff2F1E79),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  Text("CRR:9.26",
                      style: Theme.of(context).textTheme.bodyText1),
                  Text("CRR:10", style: Theme.of(context).textTheme.bodyText1),
                ]),
                Text("Target:101",
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("${data.runNeedFor} Need ${data.runNeeded} Runs To Win",
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${data.team1!}\n${data.team1WinChance}%",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodySmall),
                    Text("${data.team2!}\n${data.team2WinChance}%",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
                const SizedBox(height: 5),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: (data.team1WinChance! / 100),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xff8B323E)),
                      backgroundColor: const Color(0xff040D61),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
