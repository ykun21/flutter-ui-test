List<LiveMatch> get liveMatches => staticLiveMatchData;

class LiveMatch {
  LiveMatch({
    this.time,
    this.title,
    this.team1,
    this.team1Icon,
    this.team1Score,
    this.team1Wickets,
    this.team1Overs,
    this.team1WinChance,
    this.team2,
    this.team2Icon,
    this.team2Score,
    this.team2Wickets,
    this.team2Overs,
    this.team2WinChance,
    this.runNeeded,
    this.runNeedFor,
  });

  String? time;
  String? title;
  String? team1;
  String? team1Icon;
  int? team1Score;
  int? team1Wickets;
  num? team1Overs;
  num? team1WinChance;
  String? team2;
  String? team2Icon;
  int? team2Score;
  int? team2Wickets;
  num? team2Overs;
  num? team2WinChance;
  int? runNeeded;
  String? runNeedFor;

  factory LiveMatch.fromJson(Map<String, dynamic> json) => LiveMatch(
        time: json["time"],
        title: json["title"],
        team1: json["team1"],
        team1Icon: json["team1_icon"],
        team1Score: json["team1_score"],
        team1Wickets: json["team1_wickets"],
        team1Overs: json["team1_overs"],
        team1WinChance: json["team1_win_chance"],
        team2: json["team2"],
        team2Icon: json["team2_icon"],
        team2Score: json["team2_score"],
        team2Wickets: json["team2_wickets"],
        team2Overs: json["team2_overs"],
        team2WinChance: json["team2_win_chance"],
        runNeeded: json["run_needed"],
        runNeedFor: json["run_need_for"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "title": title,
        "team1": team1,
        "team1_icon": team1Icon,
        "team1_score": team1Score,
        "team1_wickets": team1Wickets,
        "team1_overs": team1Overs,
        "team1_win_chance": team1WinChance,
        "team2": team2,
        "team2_icon": team2Icon,
        "team2_score": team2Score,
        "team2_wickets": team2Wickets,
        "team2_overs": team2Overs,
        "team2_win_chance": team2WinChance,
        "run_needed": runNeeded,
        "run_need_for": runNeedFor,
      };

  @override
  String toString() {
    return "$team1-$team1Score $team2-$team2Score";
  }
}

List<LiveMatch> staticLiveMatchData = [
  LiveMatch(
      time: "02 August 2022",
      title: "India tour of West Indies, 2nd T20",
      team1: "West Indies",
      team1Icon: "assets/images/west_indies.png",
      team1Score: 193,
      team1Wickets: 5,
      team1Overs: 20,
      team1WinChance: 35,
      team2: "India",
      team2Icon: "assets/images/india.png",
      team2Score: 93,
      team2Wickets: 2,
      team2Overs: 10.2,
      team2WinChance: 65,
      runNeedFor: "India",
      runNeeded: 100),
  LiveMatch(
      time: "03 August 2022",
      title: "India tour of West Indies, 2nd T20",
      team1: "West Indies",
      team1Icon: "assets/images/west_indies.png",
      team1Score: 193,
      team1Wickets: 5,
      team1Overs: 20,
      team1WinChance: 35,
      team2: "India",
      team2Icon: "assets/images/india.png",
      team2Score: 93,
      team2Wickets: 2,
      team2Overs: 10.2,
      team2WinChance: 65,
      runNeedFor: "India",
      runNeeded: 100),
  LiveMatch(
      time: "03 August 2022",
      title: "India tour of West Indies, 2nd T20",
      team1: "West Indies",
      team1Icon: "assets/images/west_indies.png",
      team1Score: 193,
      team1Wickets: 5,
      team1Overs: 20,
      team1WinChance: 35,
      team2: "India",
      team2Icon: "assets/images/india.png",
      team2Score: 93,
      team2Wickets: 2,
      team2Overs: 10.2,
      team2WinChance: 65,
      runNeedFor: "India",
      runNeeded: 100),
  LiveMatch(
      time: "02 August 2022",
      title: "India tour of West Indies, 2nd T20",
      team1: "West Indies",
      team1Icon: "assets/images/west_indies.png",
      team1Score: 93,
      team1Wickets: 5,
      team1Overs: 20,
      team1WinChance: 35,
      team2: "India",
      team2Icon: "assets/images/india.png",
      team2Score: 93,
      team2Wickets: 2,
      team2Overs: 10.2,
      team2WinChance: 65,
      runNeedFor: "India",
      runNeeded: 100)
];
