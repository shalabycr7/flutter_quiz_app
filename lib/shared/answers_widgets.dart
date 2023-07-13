import 'package:flutter/material.dart';
import 'package:quizizz/global/round_button_decoration.dart';
import 'package:quizizz/screens/score_screen.dart';

class AnswersButton extends StatelessWidget {
  final String choice;

  const AnswersButton({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        style: roundButtonDecor(Colors.blue),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScorePage(),
            ),
          );
        },
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
