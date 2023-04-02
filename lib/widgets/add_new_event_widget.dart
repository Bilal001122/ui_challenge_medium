import 'package:flutter/material.dart';
import 'package:ui_challenge_medium/const.dart';

class AddNewEventWidget extends StatefulWidget {
  final String title;
  TextEditingController controller = TextEditingController();

  AddNewEventWidget({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  State<AddNewEventWidget> createState() => _AddNewEventWidgetState();
}

class _AddNewEventWidgetState extends State<AddNewEventWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: widget.controller,
          onFieldSubmitted: (value) {},
          onChanged: (value) {},
          decoration: InputDecoration(
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
            hintStyle: const TextStyle(
              color: Utils.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
