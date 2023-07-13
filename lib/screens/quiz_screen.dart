import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/screens/score_screen.dart';
import 'package:quizizz/shared/question_widgets.dart';

class QuizScreen extends StatelessWidget {
  final String data;

  const QuizScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(data),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/logo.png',
              height: appSize.height * 0.2,
              width: appSize.width * 0.2,
            ),
          ),
        ],
      ),
      body: Container(
        width: appSize.width,
        height: appSize.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const QuestionWidget(
              question: 'The Olympics are held every how many years',
            ),
            const Spacer(),
            SizedBox(
              width: appSize.width * 1 / 3,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScorePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
