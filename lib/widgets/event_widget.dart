import 'package:flutter/material.dart';
import 'package:ui_challenge_medium/const.dart';
import 'package:ui_challenge_medium/data.dart';

class EventsWidget extends StatelessWidget {
  final String title;
  final List<Event> events;

  const EventsWidget({
    super.key,
    required this.title,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 1,
              width: 100,
              color: Utils.kPrimaryColor,
            ),
          ],
        ),
        const SizedBox(height: 10),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: events.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  value: events[index].isDone,
                  onChanged: (value) {},
                  fillColor: MaterialStateProperty.all(Utils.kPrimaryColor),
                ),
                Text(
                  events[index].name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
