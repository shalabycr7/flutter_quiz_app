import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/global/round_button_decoration.dart';
import 'package:quizizz/screens/login_screen.dart';

import 'categories_screen.dart';

class ScorePage extends StatelessWidget {
  final int index;
  final int score;
  const ScorePage({super.key, required this.index, required this.score});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;

    var user = usernameController.text;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/congratulate.png"),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 78, 84, 200),
                Color.fromARGB(255, 67, 72, 169),
              ],
            )),
        width: appSize.width,
        height: appSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: user,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                  ),
                  const TextSpan(
                    text: ', Your ',
                  ),
                  const TextSpan(
                    text: 'score is: ',
                  ),
                  TextSpan(
                    text: '$score/${index + 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: appSize.width * 1 / 3,
              height: 45,
              margin: const EdgeInsets.symmetric(vertical: 80),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoriesPage()),
                  );
                },
                style: roundButtonDecor(Colors.white),
                child: Text(
                  'Reset Quiz',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.black),
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
