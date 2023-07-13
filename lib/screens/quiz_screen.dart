import 'package:flutter/material.dart';
import 'package:quizizz/shared/question_widgets.dart';

class QuizScreen extends StatefulWidget {
  final String data;

  const QuizScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
          children: const [Text('Question No:'), Text('1/5')],
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
          children: const [
            QuestionWidget(
              question: 'The Olympics are held every how many years',
            ),
          ],
        ),
      ),
    );
  }
}
