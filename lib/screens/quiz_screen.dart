import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/global/questions_title_style.dart';
import 'package:quizizz/global/round_button_decoration.dart';
import 'package:quizizz/screens/score_screen.dart';

class QuizScreen extends StatefulWidget {
  final String data;
  final List questionsList;

  const QuizScreen({Key? key, required this.data, required this.questionsList})
      : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Center(
          child: Text(
            widget.data,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          children: [
            Text('Question No:'),
            Text('${index + 1}/${widget.questionsList.length}')
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.quiz_rounded,
            size: 35,
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
            Text(
              widget.questionsList[index]["question"],
              style: GoogleFonts.roboto(
                textStyle: titleStyle,
              ),
            ),
            const Divider(),
            Column(
              children: [
                for (int i = 0;
                    i < (widget.questionsList[index]["answers"] as List).length;
                    i++)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: roundButtonDecor(Colors.blue),
                      onPressed: () {
                        score = score +
                            widget.questionsList[index]["answers"][i]
                                ["score"] as int;

                        if (index == widget.questionsList.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScorePage(
                                      index: index,
                                      score: score,
                                    )),
                          );
                        } else {
                          setState(() {
                            index++; // i changed the state (Data)
                          });
                        }
                      },
                      child: Text(
                        widget.questionsList[index]["answers"][i]["ans"],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
