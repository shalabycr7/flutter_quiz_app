import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/global/questions_title_style.dart';
import 'package:quizizz/shared/answers_widgets.dart';

class QuestionWidget extends StatelessWidget {
  String question;
  QuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          question,
          style: GoogleFonts.roboto(
            textStyle: titleStyle,
          ),
        ),
        const Divider(),
        Column(
          children: [
            AnswersButtons(
              choice: '1 Time',
            ),
            AnswersButtons(
              choice: '2 Time',
            ),
            AnswersButtons(
              choice: '3 Time',
            ),
            AnswersButtons(
              choice: '4 Time',
            ),
          ],
        ),
      ],
    );
  }
}
