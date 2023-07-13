import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/global/questions_title_style.dart';
import 'package:quizizz/shared/answers_widgets.dart';

class QuestionWidget extends StatelessWidget {
  final String question;

  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

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
          children: const [
            AnswersButton(
              choice: '1 Time',
            ),
            AnswersButton(
              choice: '2 Times',
            ),
            AnswersButton(
              choice: '3 Times',
            ),
            AnswersButton(
              choice: '4 Times',
            ),
          ],
        ),
      ],
    );
  }
}
