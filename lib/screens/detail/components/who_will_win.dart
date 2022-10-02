import 'package:flutter/material.dart';

class WhoWillWin extends StatelessWidget {
  const WhoWillWin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2F1E79),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Text("Total votes: 36524",
                  style: Theme.of(context).textTheme.caption!)),
          const SizedBox(height: 10),
          Text("who will win ?", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: () {}, child: const Text('WI')),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: const Text('IND')),
            ],
          )
        ],
      ),
    );
  }
}
