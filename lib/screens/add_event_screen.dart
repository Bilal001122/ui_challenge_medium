import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_challenge_medium/const.dart';
import 'package:ui_challenge_medium/data.dart';
import 'package:ui_challenge_medium/widgets/add_new_event_widget.dart';

import 'profil_screen.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {

  TextEditingController dateController = TextEditingController();
  TextEditingController dateController2 = TextEditingController();
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Utils.kWhiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Utils.kPrimaryColor,
          ),
        ),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(12.0),
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
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddNewEventWidget(title: 'Event Name', controller: controller),
            AddNewEventWidget(title: 'Description', controller: controller2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'From :',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: dateController,
                            keyboardType: TextInputType.datetime,
                            onFieldSubmitted: (value) {},
                            onChanged: (value) {},
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2025),
                              ).then((value) {
                                dateController.text =
                                    DateFormat.yMMMd().format(value!);
                              });
                            },
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Utils.kPrimaryColor,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Utils.kPrimaryColor,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'input',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'To :',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: dateController2,
                            keyboardType: TextInputType.datetime,
                            onFieldSubmitted: (value) {},
                            onChanged: (value) {},
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2025),
                              ).then((value) {
                                dateController2.text =
                                    DateFormat.yMMMd().format(value!);
                              });
                            },
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Utils.kPrimaryColor,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Utils.kPrimaryColor,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'input',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 150,
              height: 55,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Utils.kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  events.add(
                    Event(
                      name: controller.text,
                      isDone: false,
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add),
                    SizedBox(width: 10),
                    Text('Add'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

