import 'package:flutter/material.dart';
import 'package:quizizz/global/round_button_decoration.dart';

class AnswersButtons extends StatelessWidget {
  String choice;
  AnswersButtons({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        style: roundButtonDecor(Colors.blue),
        onPressed: () {},
        child: Text(
          choice,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
