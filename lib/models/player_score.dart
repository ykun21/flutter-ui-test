class Batter {
  Batter({
    this.name,
    this.runs,
    this.balls,
    this.fours,
    this.sixes,
    this.runRate,
  });

  String? name;
  int? runs;
  int? balls;
  int? fours;
  int? sixes;
  num? runRate;
}

class Bowler {
  Bowler({
    this.name,
    this.runs,
    this.wickets,
    this.economy,
    this.overs,
  });

  String? name;
  int? runs;
  int? wickets;
  num? overs;
  num? economy;
}

List<Batter> batterScoreData = [
  Batter(
    name: "Rohit Sharma",
    runs: 25,
    balls: 14,
    fours: 2,
    sixes: 1,
    runRate: 1.77,
  ),
  Batter(
    name: "Ishan Kishan",
    runs: 2,
    balls: 5,
    fours: 0,
    sixes: 0,
    runRate: 0.44,
  )
];

List<Bowler> bowlerScoreData = [
  Bowler(
    name: "Alzarri Joseph",
    runs: 13,
    overs: 6.0,
    wickets: 1,
    economy: 2.77,
  )
];
