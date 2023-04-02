import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_challenge_medium/const.dart';
import 'package:ui_challenge_medium/data.dart';
import 'package:ui_challenge_medium/screens/add_event_screen.dart';
import 'package:ui_challenge_medium/widgets/custom_calendar.dart';
import 'package:ui_challenge_medium/widgets/event_widget.dart';

import 'profil_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddEventScreen(),
            ),
          );
        },
        backgroundColor: Utils.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Utils.kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Utils.kWhiteColor,
        actions:  [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Hero(
              tag: 'avatar',
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'March 2023',
                style: TextStyle(
                  color: Utils.kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                DateFormat.yMMMd().format(DateTime.now()),
                style: const TextStyle(
                  color: Utils.kPrimaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 2,
                color: Utils.kPrimaryColor,
              ),
              const SizedBox(height: 10),
              const CustomCalendar(),
              EventsWidget(
                title: 'Bootcamp',
                events: events,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
