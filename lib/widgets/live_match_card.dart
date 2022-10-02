import 'package:flutter/material.dart';
import 'package:flutter_ui_test/models/live_match.dart';
import 'package:flutter_ui_test/screens/detail/match_details.dart';

class LiveMatchCard extends StatelessWidget {
  const LiveMatchCard({Key? key, required this.data}) : super(key: key);

  final LiveMatch data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => MatchDetailsPage(data: data)))),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: const Color(0xff2D1A76),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(color: Colors.black26, blurRadius: 15)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
            const Divider(color: Color(0xff7381FD), thickness: 2),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TeamWithScore(
                      icon: data.team1Icon!,
                      name: data.team1!,
                      score: data.team1Score!,
                      wickets: data.team1Wickets!,
                      over: data.team1Overs!),
                ),
                Text(
                  "VS",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Expanded(
                  child: TeamWithScore(
                      icon: data.team2Icon!,
                      name: data.team2!,
                      score: data.team2Score!,
                      wickets: data.team2Wickets!,
                      over: data.team2Overs!),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text("${data.runNeedFor} Need ${data.runNeeded} Runs To Win",
                style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 5),
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
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xff8B323E)),
                  backgroundColor: const Color(0xff040D61),
                ))
          ],
        ),
      ),
    );
  }
}

class TeamWithScore extends StatelessWidget {
  final String icon;
  final String name;
  final int score;
  final int wickets;
  final num over;
  const TeamWithScore({
    Key? key,
    required this.icon,
    required this.name,
    required this.score,
    required this.over,
    required this.wickets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon, height: 50),
        const SizedBox(height: 2),
        Text(name,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text: score.toString(),
            style: Theme.of(context).textTheme.headline5,
            children: <TextSpan>[
              TextSpan(
                text: "/$wickets",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextSpan(
                text: " (${over.toStringAsFixed(2)})",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
