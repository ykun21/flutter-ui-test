import 'package:flutter/material.dart';

class Overs extends StatelessWidget {
  const Overs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.separated(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
              height: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: VerticalDivider(
                  color: Colors.white,
                ),
              ));
        },
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Over ${index + 1}",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                width: 10,
              ),
              ...List.generate(
                  7,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: CircleAvatar(
                          backgroundColor: index == 5
                              ? const Color(0xffD20000)
                              : const Color(0xff5637E8),
                          radius: 12,
                          child: Center(
                              child: Text(
                            "${index == 5 ? 'W' : index + 1}",
                            style: Theme.of(context).textTheme.caption,
                          )),
                        ),
                      )),
              const Text(" = 28")
            ],
          );
        },
      ),
    );
  }
}
