import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget(this.child, {super.key});
  final Widget child;
  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live'),
        bottom: PreferredSize(
          preferredSize: const Size(double.maxFinite, 70),
          child: Material(
            color: const Color(0xff360275),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: const <Widget>[
                Tab(text: "Cricket"),
                Tab(text: "Football"),
                Tab(text: "Kabaddi"),
                Tab(text: "Hockey"),
                Tab(text: "Baseball"),
                Tab(text: "Tennis"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          widget.child,
          const Center(child: Text("Football")),
          const Center(child: Text("Kabaddi")),
          const Center(child: Text("Hockey")),
          const Center(child: Text("Baseball")),
          const Center(child: Text("Tennis")),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff6B2DB5),
            Color(0xff612F9B),
            Color(0xff42117C),
            Color(0xff1E0739),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
        )),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_outlined), label: "live"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outlined), label: "youtube"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "calender"),
        ]),
      ),
    );
  }
}
