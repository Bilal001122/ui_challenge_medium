import 'package:flutter/material.dart';
import 'package:ui_challenge_medium/const.dart';
import 'package:ui_challenge_medium/data.dart';
import 'package:ui_challenge_medium/widgets/event_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: Utils.kPrimaryGradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 50,
                right: 50,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Utils.kWhiteColor,
                  child: Hero(
                    tag: 'avatar',
                    child: Image.asset(
                      'assets/avatar.png',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 12,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Utils.kWhiteColor,
                  ),
                ),
              ),
              const Positioned(
                top: 360,
                left: 100,
                right: 100,
                child: Text(
                  'Moussaab Baadla',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 420,
                left: 30,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    EventsWidget(title: 'Events Complete', events: events),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
